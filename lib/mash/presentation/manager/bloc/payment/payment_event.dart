part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.getPaymentDashboard({
    required PaymentStatusType paymentStatusType,
    required String userId,
    String? trackId,
  }) = _GetPaymentDashboard;
  const factory PaymentEvent.selectPaymentsCheckboxEvent(String id) =
      _SelectPaymentsCheckboxEvent;
  const factory PaymentEvent.selectedItemIndex({
    required int? index,
  }) = _SelectedItemIndex;
  const factory PaymentEvent.getPaymentFinalAmount({
    required String totalAmount,
    required String installmentId,
    required String studentId,
  }) = _GetPaymentFinalAmount;
}
