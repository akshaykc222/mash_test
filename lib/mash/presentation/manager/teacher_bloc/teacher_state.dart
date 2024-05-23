part of 'teacher_bloc.dart';

@freezed
class TeacherState with _$TeacherState {
  const factory TeacherState({
    ResponseClassify<List<TeacherRatingEntity>>? getTeacherRating
}) = _TeacherState;

  factory TeacherState.initial() => const TeacherState();
}