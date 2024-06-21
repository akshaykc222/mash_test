

import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/facilities/get_facility_dashboard_model.dart';
import 'package:mash/mash/data/remote/request/get_facility_dashboard_request.dart';
import 'package:mash/mash/data/remote/request/get_fee_success_receipt_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';

abstract interface class FacilityDataSource {
  Future<List<GetFacilityDashboardModel>> getFacilityDashBoard(GetFacilityDashBoardRequest params);
}

@LazySingleton(as: FacilityDataSource)
@injectable
class FacilityDataSourceImpl implements FacilityDataSource{

  final ApiProvider apiProvider;

  FacilityDataSourceImpl({required this.apiProvider});

  @override
  Future<List<GetFacilityDashboardModel>> getFacilityDashBoard(GetFacilityDashBoardRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.getFacilitiesDashboard,body:params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => GetFacilityDashboardModel.fromJson(e)).toList();
  }

}