part of 'home_work_notes_bloc.dart';

@freezed
class HomeWorkNotesEvent with _$HomeWorkNotesEvent {
  const factory HomeWorkNotesEvent.getHomeWorkReportEvent({
    required String startDate,
    required String endDate,
  }) = _GetHomeWorkReportEvent;
  const factory HomeWorkNotesEvent.getNotesWorkReport({
    required String startDate,
    required String endDate,
  }) = _GetNotesWorkReport;
}
