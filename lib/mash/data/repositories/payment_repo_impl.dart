import 'package:injectable/injectable.dart';
import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';
import 'package:mash/mash/domain/repositories/payment_repository.dart';

import '../remote/data_sources/pament_remote_data_source.dart';
import '../remote/request/payment_dashboard_request.dart';

@LazySingleton(as: PaymentRepository)
class PaymentRepoImpl implements PaymentRepository {
  final PaymentRemoteDataSource paymentRemoteDataSource;

  PaymentRepoImpl({required this.paymentRemoteDataSource});
  @override
  Future<List<PaymentDashboardEntity>> getPaymentDashboard(
      PaymentDashboardRequest params) async {
    return await paymentRemoteDataSource.getPaymentDashboard(params);
  }
}
