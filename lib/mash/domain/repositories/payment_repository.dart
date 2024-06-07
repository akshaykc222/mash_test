import 'package:mash/mash/data/remote/request/payment_final_amount_request.dart';
import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';

import '../../data/remote/request/payment_dashboard_request.dart';

abstract interface class PaymentRepository {
  Future<List<PaymentDashboardEntity>> getPaymentDashboard(
      PaymentDashboardRequest params);

  Future<String> getPaymentFinal(PaymentFinalRequest params);
}
