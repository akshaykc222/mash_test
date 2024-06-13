

import 'package:mash/mash/data/remote/request/leave_dashboard_request.dart';
import 'package:mash/mash/domain/entities/leave/leave_dashboard_entity.dart';

abstract class LeaveRepository{
  Future<List<LeaveDashboardEntity>>  getLeaveDashboardData(LeaveDashboardRequest request);
}