part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    required ResponseClassify<List<PaymentDashboardEntity>>
        paymentDashboardResponse,
    required int? selectedItemIndex,
    required Set<String?>? selectedCheckboxItems,
    required String totalAmount,
    required ResponseClassify<List<PaymentDashboardEntity>>
        paymentHistoryResponse,
    required ResponseClassify<OrderStatus> paymentOrderResponse,
  }) = _PaymentState;
  factory PaymentState.initial() => PaymentState(
        paymentDashboardResponse: ResponseClassify.initial(),
        selectedItemIndex: null,
        selectedCheckboxItems: {},
        totalAmount: '',
        paymentHistoryResponse: ResponseClassify.initial(),
        paymentOrderResponse: ResponseClassify.initial(),
      );
}
