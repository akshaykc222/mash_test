part of 'offline_exam_time_table_bloc.dart';

@freezed
class OfflineExamTimeTableState with _$OfflineExamTimeTableState {

  const factory OfflineExamTimeTableState({
   required ResponseClassify<List<OfflineTimeTableTermEntity>>? getOfflineExamTerms,required ResponseClassify<List<OfflineExamTimeTableEntity>>? getOfflineExamTimeTable
  }) = _OfflineExamTimeTableState;

   factory OfflineExamTimeTableState.initial() =>  OfflineExamTimeTableState(getOfflineExamTerms: ResponseClassify.initial(), getOfflineExamTimeTable: ResponseClassify.initial());
}
