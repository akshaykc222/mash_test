import 'package:equatable/equatable.dart';

class PaymentCompleteResponseEntity extends Equatable {
  final String? cfOrderId;
  final String? createdAt;
  final String? orderId;
  final String? orderStatus;
  final String? paymentMethods;
  final String? orderNote;
  final String? orderAmount;
  final String? payload;

  final String? paymentSessionId;
  final String? paymentsUrl;
  final String? refundsUrl;
  final String? settlementsUrl;
  final String? orderExpiryTime;

  const PaymentCompleteResponseEntity(
      {required this.cfOrderId,
      required this.createdAt,
      required this.orderId,
      required this.orderStatus,
      required this.paymentMethods,
      required this.orderNote,
      required this.orderAmount,
      required this.payload,
      required this.paymentSessionId,
      required this.paymentsUrl,
      required this.refundsUrl,
      required this.settlementsUrl,
      required this.orderExpiryTime});
  @override
  List<Object?> get props => [];
}
