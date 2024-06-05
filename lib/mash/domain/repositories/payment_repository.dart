import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';

import '../../data/remote/request/payment_dashboard_request.dart';

abstract interface class PaymentRepository {
  Future<List<PaymentDashboardEntity>> getPaymentDashboard(
      PaymentDashboardRequest params);
}
