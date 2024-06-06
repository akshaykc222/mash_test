import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/payment_dashboard_request.dart';
import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_dashboard.dart';

import '../../../utils/enums.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final GetPaymentDashboardUsecase getPaymentDashboardUsecase;
  final GetUserInfoUseCase getUserInfoUseCase;
  PaymentBloc(this.getPaymentDashboardUsecase, this.getUserInfoUseCase)
      : super(PaymentState.initial()) {
    on<_GetPaymentDashboard>(_getPaymentDashboard);
    on<_SelectedItemIndex>(_selectedItemIndex);
    on<_SelectPaymentsCheckboxEvent>(_selectPaymentsCheckboxEvent);
  }

  _getPaymentDashboard(
      _GetPaymentDashboard event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(paymentDashboardResponse: ResponseClassify.loading()));
    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());
      log('event of status ---------------------- ${event.paymentStatusType}');
      final data =
          await getPaymentDashboardUsecase.call(PaymentDashboardRequest(
        trackId: event.paymentStatusType == PaymentStatusType.paid ||
                event.paymentStatusType == PaymentStatusType.pending
            ? ''
            : event.trackId ?? '',
        companyId: userInfo?.compId ?? "",
        studentId: 'MGS1000685',
        academicId: userInfo?.academicId ?? '',
        actionId: event.paymentStatusType == PaymentStatusType.transaction
            ? '2'
            : '1',
        completionStatus: event.paymentStatusType == PaymentStatusType.paid ||
                event.paymentStatusType == PaymentStatusType.transaction
            ? '1'
            : '0',
      ));
      final Set<String> dueId = Set.from(data.map((e) => e.feeTrackId));
      int totalAmount = 0;
      for (var i in data) {
        if (i.isDue == '1') {
          prettyPrint('total amount $totalAmount');
          totalAmount = totalAmount + int.parse(i.feeAmountBalance.toString());
        }
      }
      emit(state.copyWith(
        paymentDashboardResponse: ResponseClassify.completed(data),
        selectedCheckboxItems: dueId,
        totalAmount: totalAmount.toString(),
      ));
      prettyPrint(
          'initial state adding id to set ${state.selectedCheckboxItems}');
    } catch (e) {
      emit(state.copyWith(paymentDashboardResponse: ResponseClassify.error(e)));
    }
  }

  _selectedItemIndex(_SelectedItemIndex event, Emitter<PaymentState> emit) {
    emit(state.copyWith(selectedItemIndex: event.index));
  }

  _selectPaymentsCheckboxEvent(
      _SelectPaymentsCheckboxEvent event, Emitter<PaymentState> emit) {
    final Set<String> currentSet = Set.from(state.selectedCheckboxItems ?? {});
    if (currentSet.contains(event.id)) {
      currentSet.remove(event.id);
    } else {
      currentSet.add(event.id);
    }
    emit(state.copyWith(selectedCheckboxItems: currentSet));
    prettyPrint('updated set ${state.selectedCheckboxItems}');
  }
}
