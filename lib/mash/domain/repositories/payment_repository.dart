import 'package:mash/mash/data/remote/request/payment_final_amount_request.dart';
import 'package:mash/mash/data/remote/request/payment_status_update_request.dart';
import 'package:mash/mash/data/remote/request/payment_token_request.dart';
import 'package:mash/mash/data/remote/request/payment_uniqueid_request.dart';
import 'package:mash/mash/domain/entities/payment/payment_complete_response_entity.dart';
import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';

import '../../data/remote/request/payment_complete_response_request.dart';
import '../../data/remote/request/payment_dashboard_request.dart';
import '../entities/payment/payment_token_entity.dart';

abstract interface class PaymentRepository {
  Future<List<PaymentDashboardEntity>> getPaymentDashboard(
      PaymentDashboardRequest params);

  Future<String> getPaymentFinal(PaymentFinalRequest params);

  Future<String> getPaymentOrderId(PaymentUniqueIdRequest params);

  Future<PaymentTokenEntity> getPaymentToken(PaymentTokenRequest params);

  Future<PaymentCompleteResponseEntity> getPaymentCompleteResponse(
      PaymentCompleteResponseRequest params);
  Future<String> postPaymentStatusUpdate(PaymentStatusUpdateRequest params);
}
