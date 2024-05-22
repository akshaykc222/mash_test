part of 'home_work_notes_bloc.dart';

@freezed
class HomeWorkNotesState with _$HomeWorkNotesState {
  const factory HomeWorkNotesState({
    required ResponseClassify homeWorkReportResponse,
    required ResponseClassify noteWorkReportResponse,
  }) = _HomeWorkNotesState;
  factory HomeWorkNotesState.initial() => HomeWorkNotesState(
      homeWorkReportResponse: ResponseClassify.initial(),
      noteWorkReportResponse: ResponseClassify.initial());
}
