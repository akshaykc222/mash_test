part of 'academic_bloc.dart';

@freezed
class AcademicState with _$AcademicState {
  const factory AcademicState({
    required ResponseClassify classDetails,
    required ResponseClassify divisionDetails,
    required ResponseClassify academicSubjects,
    required ResponseClassify syllabusTerms,
    required ResponseClassify syllabus,
  }) = _AcademicState;
  factory AcademicState.initial() => AcademicState(
        classDetails: ResponseClassify.initial(),
        divisionDetails: ResponseClassify.initial(),
        academicSubjects: ResponseClassify.initial(),
        syllabusTerms: ResponseClassify.initial(),
        syllabus: ResponseClassify.initial(),
      );
}
