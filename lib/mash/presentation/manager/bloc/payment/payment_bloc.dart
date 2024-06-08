import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/payment_dashboard_request.dart';
import 'package:mash/mash/data/remote/request/payment_final_amount_request.dart';
import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_dashboard_usecase.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_final_amount_usecase.dart';
import '../../../utils/enums.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final GetPaymentDashboardUsecase getPaymentDashboardUsecase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final GetPaymentFinalAmountUsecase getPaymentFinalAmountUsecase;

  PaymentBloc(this.getPaymentDashboardUsecase, this.getUserInfoUseCase,
      this.getPaymentFinalAmountUsecase)
      : super(PaymentState.initial()) {
    on<_GetPaymentDashboard>(_onGetPaymentDashboard);
    on<_SelectedItemIndex>(_onSelectedItemIndex);
    on<_SelectPaymentsCheckboxEvent>(_onSelectPaymentsCheckboxEvent);
    on<_GetPaymentFinalAmount>(_getPaymentFinalAmount);
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
          studentId: 'MGS1000685',
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
          pStudentId: event.studentId,
          pTotalAmount: event.totalAmount));
      emit(state.copyWith(totalAmount: data));
      log('response ------------------$data');
    } catch (e) {
      prettyPrint(e.toString());
    }
  }
}
