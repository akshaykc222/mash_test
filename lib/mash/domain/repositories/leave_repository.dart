import 'package:mash/mash/data/remote/request/leave_dashboard_request.dart';
import 'package:mash/mash/domain/entities/leave/leave_dashboard_entity.dart';

import '../../data/remote/request/leave_status_request.dart';
import '../entities/leave/leave_status_entity.dart';

abstract class LeaveRepository {
  Future<List<LeaveDashboardEntity>> getLeaveDashboardData(
      LeaveDashboardRequest request);
  Future<LeaveStatusEntity> getLeaveStatus(LeaveStatusRequest params);
}
