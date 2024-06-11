import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpayment/cfwebcheckoutpayment.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpaymentgateway/cfpaymentgatewayservice.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfsession/cfsession.dart';
import 'package:flutter_cashfree_pg_sdk/utils/cfenums.dart';
import 'package:flutter_cashfree_pg_sdk/utils/cfexceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/payment_complete_response_request.dart';
import 'package:mash/mash/data/remote/request/payment_dashboard_request.dart';
import 'package:mash/mash/data/remote/request/payment_final_amount_request.dart';
import 'package:mash/mash/data/remote/request/payment_save_response.dart';
import 'package:mash/mash/data/remote/request/payment_status_update_request.dart';
import 'package:mash/mash/data/remote/request/payment_token_request.dart';
import 'package:mash/mash/data/remote/request/payment_uniqueid_request.dart';
import 'package:mash/mash/domain/entities/payment/payment_complete_response_entity.dart';
import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_dashboard_usecase.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_final_amount_usecase.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_order_id_usecase.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_token_usecase.dart';
import 'package:mash/mash/domain/use_cases/payment/payment_post_paymentstatus_update.dart';
import '../../../../domain/use_cases/payment/get_payment_complete_response_usecase.dart';
import '../../../../domain/use_cases/payment/save_payment_reponse_usecase.dart';
import '../../../utils/enums.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final GetPaymentDashboardUsecase getPaymentDashboardUsecase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final GetPaymentFinalAmountUsecase getPaymentFinalAmountUsecase;
  final GetPaymentOrderIdUsecase getPaymentOrderIdUsecase;
  final GetPaymentTokenUsecase getPaymentTokenUsecase;
  final GetPaymentCompleteResponseUsecase getPaymentCompleteResponseUsecase;
  final PostPaymentStatusUpdateUsecase postPaymentStatusUpdateUsecase;
  final SavePaymentResponseUsecase savePaymentResponseUsecase;
  PaymentBloc(
      this.getPaymentDashboardUsecase,
      this.getUserInfoUseCase,
      this.getPaymentFinalAmountUsecase,
      this.getPaymentOrderIdUsecase,
      this.getPaymentTokenUsecase,
      this.getPaymentCompleteResponseUsecase,
      this.postPaymentStatusUpdateUsecase,
      this.savePaymentResponseUsecase)
      : super(PaymentState.initial()) {
    on<_GetPaymentDashboard>(_onGetPaymentDashboard);
    on<_SelectedItemIndex>(_onSelectedItemIndex);
    on<_SelectPaymentsCheckboxEvent>(_onSelectPaymentsCheckboxEvent);
    on<_GetPaymentFinalAmount>(_getPaymentFinalAmount);
    on<_GetPaymentOrderId>(_getPaymentOrderId);
    on<_GetPaymentTokenAndOpenPayment>(_getPaymentTokenAndOpenPayment);
    on<_GetPaymentCompleteResponse>(_getPaymentCompleteResponse);
  }

  Future<void> _onGetPaymentDashboard(
      _GetPaymentDashboard event, Emitter<PaymentState> emit) async {
    if (event.paymentStatusType == PaymentStatusType.transaction) {
      emit(state.copyWith(paymentHistoryResponse: ResponseClassify.loading()));
    } else {
      emit(
          state.copyWith(paymentDashboardResponse: ResponseClassify.loading()));
    }

    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());
      final data = await getPaymentDashboardUsecase.call(
        PaymentDashboardRequest(
          trackId: (event.paymentStatusType == PaymentStatusType.paid ||
                  event.paymentStatusType == PaymentStatusType.pending)
              ? 0
              : int.parse(event.trackId ?? ''),
          companyId: userInfo?.compId ?? "",
          studentId: 'MGS1000513',
          academicId: userInfo?.academicId ?? '',
          actionId: event.paymentStatusType == PaymentStatusType.transaction
              ? '2'
              : '1',
          completionStatus:
              (event.paymentStatusType == PaymentStatusType.paid ||
                      event.paymentStatusType == PaymentStatusType.transaction)
                  ? '1'
                  : '0',
        ),
      );

      if (event.paymentStatusType != PaymentStatusType.transaction) {
        final Set<String?> dueId =
            data.where((e) => e.isDue == '1').map((e) => e.feeTrackId).toSet();
        final totalAmount = data
            .where((i) => i.isDue == '1')
            .fold(0, (sum, i) => sum + int.parse(i.feeAmountBalance ?? '0'));
        emit(state.copyWith(
          paymentDashboardResponse: ResponseClassify.completed(data),
          selectedCheckboxItems: dueId,
          totalAmount: totalAmount.toString(),
        ));
      } else {
        emit(state.copyWith(
            paymentHistoryResponse: ResponseClassify.completed(data)));
        prettyPrint('state of the ${state.paymentDashboardResponse.data}');
      }
    } catch (e) {
      if (event.paymentStatusType == PaymentStatusType.transaction) {
        emit(state.copyWith(paymentHistoryResponse: ResponseClassify.error(e)));
      } else {
        emit(state.copyWith(
            paymentDashboardResponse: ResponseClassify.error(e)));
      }
    }
  }

  void _onSelectedItemIndex(
      _SelectedItemIndex event, Emitter<PaymentState> emit) {
    emit(state.copyWith(selectedItemIndex: event.index));
  }

  void _onSelectPaymentsCheckboxEvent(
      _SelectPaymentsCheckboxEvent event, Emitter<PaymentState> emit) {
    final Set<String> currentSet = Set.from(state.selectedCheckboxItems ?? {});
    if (currentSet.contains(event.id)) {
      currentSet.remove(event.id);
    } else {
      currentSet.add(event.id);
    }
    emit(state.copyWith(selectedCheckboxItems: currentSet));
  }

  _getPaymentFinalAmount(
      _GetPaymentFinalAmount event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(totalAmount: '0'));
    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());

      final data = await getPaymentFinalAmountUsecase.call(PaymentFinalRequest(
          pCompId: userInfo?.compId ?? '',
          pInstallmentId: event.installmentId,
          pStudentId: 'MGS1000513',
          pTotalAmount: event.totalAmount));
      emit(state.copyWith(totalAmount: data));

      log('response ------------------$data');
    } catch (e) {
      prettyPrint(e.toString());
    }
  }

  _getPaymentOrderId(
      _GetPaymentOrderId event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(paymentOrderResponse: ResponseClassify.loading()));
    try {
      final user = await getUserInfoUseCase.call(NoParams());
      final data = await getPaymentOrderIdUsecase.call(PaymentUniqueIdRequest(
        studentId: event.studentId,
        compId: user?.compId,
        installmentId: event.installmentId,
        remark: event.remark,
        totalAmount: state.totalAmount,
        studentName: event.student,
        parentName: event.student,
        parentMob: event.mobile,
        parentEmail: event.email,
        academicId: user?.academicId,
      ));
      add(_GetPaymentTokenAndOpenPayment(
        studentId: 'MGS1000513',
        installmentId: event.installmentId,
        remark: event.remark,
        email: event.email,
        mobile: event.mobile,
        orderId: data,
        student: event.student,
      ));
    } catch (e) {
      prettyPrint(e.toString());
      emit(state.copyWith(paymentOrderResponse: ResponseClassify.error(e)));
    }
  }

  _getPaymentTokenAndOpenPayment(
      _GetPaymentTokenAndOpenPayment event, Emitter<PaymentState> emit) async {
    final user = await getUserInfoUseCase.call(NoParams());

    final sessionTokenData =
        await getPaymentTokenUsecase.call(PaymentTokenRequest(
      compId: user?.compId ?? "",
      orderId: event.orderId,
      orderAmount: state.totalAmount,
      studentId: 'MGS1000513',
      userName: event.student,
      userEmail: event.email,
      userMob: event.mobile,
      userRemark: event.remark,
      platform: "UAT",
    ));
    if (sessionTokenData.cfOrderId.isNotEmpty) {
    } else {}
    try {
      var session = CFSessionBuilder()
          .setEnvironment(CFEnvironment.SANDBOX)
          .setOrderId(sessionTokenData.orderId)
          .setPaymentSessionId(sessionTokenData.paymentSessionId)
          .build();
      var cfWebCheckout =
          CFWebCheckoutPaymentBuilder().setSession(session).build();
      var cfpaymenteGateway = CFPaymentGatewayService();
      cfpaymenteGateway.setCallback((orderId) {
        add(_GetPaymentCompleteResponse(orderId: orderId));

        prettyPrint('callback first ${orderId.toString()}');
      }, (response, orderId) {
        add(_GetPaymentCompleteResponse(
          orderId: orderId,
          email: event.email,
          remark: event.remark,
          userName: event.student,
          studenId: 'MGS1000513',
        ));
        prettyPrint(
            'callbad second response================= ${response.toString()} p1 ==========${orderId.toString()}');
      });
      cfpaymenteGateway.doPayment(cfWebCheckout);

      return session;
    } on CFException catch (e, s) {
      print('error on cashfree --->>> ${e.message} strack race $s');
    }
  }

  _getPaymentCompleteResponse(
      _GetPaymentCompleteResponse event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(paymentOrderResponse: ResponseClassify.initial()));
    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());
      final data = await getPaymentCompleteResponseUsecase
          .call(PaymentCompleteResponseRequest(
        compId: userInfo?.compId ?? "",
        orderId: event.orderId ?? "",
        platform: "UAT",
      ));

      //if reponse is success call payment status update
      if (data.cfOrderId != null) {
        postPaymentStatusUpdateUsecase.call(PaymentStatusUpdateRequest(
          compId: userInfo?.compId ?? "",
          orderId: data.orderId ?? "",
          paymentStatus: data.orderStatus ?? "",
          payload: data.payload ?? "",
        ));
      }
      if (data.orderStatus == OrderStatus.PAID.name) {
        emit(state.copyWith(
            paymentOrderResponse:
                ResponseClassify.completed(OrderStatus.PAID)));
        await savePaymentResponseUsecase.call(PaymentSaveResponseRequest(
          pCompId: userInfo?.compId,
          pStudentId: event.studenId,
          pInstalmentId: data.orderId,
          pTotalAmount: data.orderAmount,
          pUserName: event.userName,
          pUserMob: event.mobile,
          pUserEmail: event.email,
          pCfOrderId: data.cfOrderId,
          pPaymentType: data.paymentMethods,
          pPaymentDate: data.createdAt,
          pRemark: event.remark,
          pOrderId: data.orderId,
        ));

        //call save payment response api
      } else if (data.orderStatus == OrderStatus.ACTIVE.name) {
        emit(state.copyWith(
            paymentOrderResponse:
                ResponseClassify.completed(OrderStatus.ACTIVE)));
        //redirect to processing page
      } else if (data.orderStatus == OrderStatus.FAILED.name) {
        emit(state.copyWith(
            paymentOrderResponse:
                ResponseClassify.completed(OrderStatus.FAILED)));
        //redirect to failed page
      }
    } catch (e) {
      emit(state.copyWith(paymentOrderResponse: ResponseClassify.error(e)));
    }
  }
}
