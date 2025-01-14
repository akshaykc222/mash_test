import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/leave_data_source.dart';
import 'package:mash/mash/data/remote/request/leave_dashboard_request.dart';
import 'package:mash/mash/domain/entities/leave/leave_dashboard_entity.dart';
import 'package:mash/mash/domain/entities/leave/leave_status_entity.dart';
import 'package:mash/mash/domain/repositories/leave_repository.dart';

import '../remote/request/leave_status_request.dart';

@LazySingleton(as: LeaveRepository)
@injectable
class LeaveRepositoryImpl extends LeaveRepository {
  final LeaveDataSource _leaveDataSource;

  LeaveRepositoryImpl(this._leaveDataSource);

  @override
  Future<List<LeaveDashboardEntity>> getLeaveDashboardData(
      LeaveDashboardRequest request) {
    return _leaveDataSource.getLeaveDashboardDetail(request);
  }

  @override
  Future<LeaveStatusEntity> getLeaveStatus(LeaveStatusRequest params) {
    return _leaveDataSource.getLeaveStatus(params);
  }
}
