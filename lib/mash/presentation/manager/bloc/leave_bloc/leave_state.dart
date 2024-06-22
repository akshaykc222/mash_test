part of 'leave_bloc.dart';

@freezed
class LeaveState with _$LeaveState {
  const factory LeaveState({
    ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData,
    required ResponseClassify<LeaveStatusEntity> leaveStatusResponse,
  }) = _LeaveState;

  factory LeaveState.initial() => LeaveState(
        leaveStatusResponse: ResponseClassify.initial(),
      );
}
