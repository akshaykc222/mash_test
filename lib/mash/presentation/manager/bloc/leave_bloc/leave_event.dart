part of 'leave_bloc.dart';

@freezed
class LeaveEvent with _$LeaveEvent {
  const factory LeaveEvent.started() = _Started;
  const factory LeaveEvent.getLeaveDashboardData() = _GetLeaveDashboardData;

}
