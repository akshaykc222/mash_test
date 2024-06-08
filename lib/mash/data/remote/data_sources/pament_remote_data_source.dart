import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/payment/payment_dashboard_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';

import '../../../domain/entities/payment/payment_dashboard_entity.dart';
import '../request/payment_dashboard_request.dart';
import '../request/payment_final_amount_request.dart';

abstract interface class PaymentRemoteDataSource {
  Future<List<PaymentDashboardEntity>> getPaymentDashboard(
      PaymentDashboardRequest params);
  Future<String> getPaymentFinal(PaymentFinalRequest params);
}

@LazySingleton(as: PaymentRemoteDataSource)
@injectable
class PaymentRemoteDataSourceImpl extends PaymentRemoteDataSource {
  final ApiProvider apiProvider;

  PaymentRemoteDataSourceImpl({required this.apiProvider});

  @override
  Future<List<PaymentDashboardEntity>> getPaymentDashboard(
      PaymentDashboardRequest params) async {
    final data = await apiProvider.get(
      AppRemoteRoutes.paymentDashboard,
      body: params.toJson(),
    );

    return List<PaymentDashboardEntity>.from(
            data['resTable'].map((e) => PaymentDashboardModel.fromJson(e)))
        .toList();
  }

  @override
  Future<String> getPaymentFinal(params) async {
    final data = await apiProvider.get(AppRemoteRoutes.paymentFinal,
        body: params.toJson());
    return data['resMessage'];
  }
}
