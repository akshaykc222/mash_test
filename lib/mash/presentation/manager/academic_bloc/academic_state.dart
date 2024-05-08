part of 'academic_bloc.dart';

@freezed
class AcademicState with _$AcademicState {
  const factory AcademicState({
    required ResponseClassify classDetails,
  }) = _AcademicState;
  factory AcademicState.initial() =>
      AcademicState(classDetails: ResponseClassify.initial());
}
