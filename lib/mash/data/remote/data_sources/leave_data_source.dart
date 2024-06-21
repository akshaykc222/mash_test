

import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/leave/leave_dashboard_model.dart';
import 'package:mash/mash/data/remote/request/leave_dashboard_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/leave/leave_dashboard_entity.dart';

abstract class LeaveDataSource {
  Future<List<LeaveDashboardEntity>>  getLeaveDashboardDetail(LeaveDashboardRequest request);

}

@LazySingleton(as:LeaveDataSource )
@injectable
class LeaveDataSourceImpl extends LeaveDataSource{

  final ApiProvider apiProvider;

  LeaveDataSourceImpl(this.apiProvider);

  @override
  Future<List<LeaveDashboardEntity>> getLeaveDashboardDetail(LeaveDashboardRequest request) async {
    final data = await  apiProvider.get(AppRemoteRoutes.getLeaveDashboard,body: request.toJson());
    return List<LeaveDashboardEntity>.from(data["resTable"].map((e)=>LeaveDashboardModel.fromJson(e))).toList();
  }

}