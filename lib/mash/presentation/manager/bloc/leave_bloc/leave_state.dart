part of 'leave_bloc.dart';

@freezed
class LeaveState with _$LeaveState {

  const factory LeaveState({
    ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData
  }) = _LibraryState;

   factory LeaveState.initial() =>  LeaveState();
}
