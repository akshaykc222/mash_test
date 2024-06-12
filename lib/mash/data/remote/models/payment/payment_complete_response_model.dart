import 'dart:convert';
import '../../../../domain/entities/payment/payment_complete_response_entity.dart';

class PaymentCompleteResponseModel extends PaymentCompleteResponseEntity {
  const PaymentCompleteResponseModel({
    required String cfOrderId,
    required String createdAt,
    required String orderId,
    required String orderStatus,
    required String paymentMethods,
    required String orderNote,
    required String orderAmount,
    required String payload,
    required String paymentSessionId,
    required String paymentsUrl,
    required String refundsUrl,
    required String settlementsUrl,
    required String orderExpiryTime,
  }) : super(
          cfOrderId: cfOrderId,
          createdAt: createdAt,
          orderId: orderId,
          orderStatus: orderStatus,
          paymentMethods: paymentMethods,
          orderNote: orderNote,
          orderAmount: orderAmount,
          payload: payload,
          paymentSessionId: paymentSessionId,
          paymentsUrl: paymentsUrl,
          refundsUrl: refundsUrl,
          settlementsUrl: settlementsUrl,
          orderExpiryTime: orderExpiryTime,
        );

  factory PaymentCompleteResponseModel.fromJson(Map<String, dynamic> json) {
    final payload = jsonDecode(json['payload']);
    return PaymentCompleteResponseModel(
      cfOrderId: json['cf_order_id'].toString(),
      createdAt: json['created_at'],
      orderId: json['order_id'],
      orderStatus: json['order_status'],
      paymentMethods: json['payment_methods'] ?? '',
      orderNote: json['order_note'],
      orderAmount: json['order_amount'],
      payload: payload,
      paymentSessionId: payload['payment_session_id'] ?? '',
      paymentsUrl: payload['payments']?['url'] ?? '',
      refundsUrl: payload['refunds']?['url'] ?? '',
      settlementsUrl: payload['settlements']?['url'] ?? '',
      orderExpiryTime: payload['order_expiry_time'] ?? '',
    );
  }
}
