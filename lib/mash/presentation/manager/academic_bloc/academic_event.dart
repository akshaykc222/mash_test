part of 'academic_bloc.dart';

@freezed
class AcademicEvent with _$AcademicEvent {
  const factory AcademicEvent.getClassDetails() = _GetClassDetails;
  const factory AcademicEvent.getAcademicSubjects() = _GetAcademicSubjects;
  const factory AcademicEvent.getDivisionDetails() = _GetDevisionDetails;
}
