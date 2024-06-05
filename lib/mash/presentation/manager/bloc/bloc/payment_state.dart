part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    required ResponseClassify<List<PaymentDashboardEntity>>
        paymentDashboardResponse,
    required int? selectedItemIndex,
    required Set<String>? selectedCheckboxItems,
  }) = _PaymentState;
  factory PaymentState.initial() => PaymentState(
        paymentDashboardResponse: ResponseClassify.initial(),
        selectedItemIndex: null,
        selectedCheckboxItems: {},
      );
}
