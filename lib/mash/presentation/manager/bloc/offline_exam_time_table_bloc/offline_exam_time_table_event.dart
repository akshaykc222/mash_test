part of 'offline_exam_time_table_bloc.dart';

@freezed
class OfflineExamTimeTableEvent with _$OfflineExamTimeTableEvent {
  const factory OfflineExamTimeTableEvent.started() = _Started;
  const factory OfflineExamTimeTableEvent.getOfflineExamTerms() = _GetOfflineExamTerms;
  const factory OfflineExamTimeTableEvent.getOfflineExamTimeTable({required String termId}) = _GetOfflineExamTimeTable;
}
