part of 'academic_bloc.dart';

@freezed
class AcademicEvent with _$AcademicEvent {
  const factory AcademicEvent.getClassDetails() = _GetClassDetails;
  const factory AcademicEvent.getAcademicSubjects() = _GetAcademicSubjects;
  const factory AcademicEvent.getDivisionDetails() = _GetDevisionDetails;
  const factory AcademicEvent.getSyllabus(String termId) = _GetSyllabus;
  const factory AcademicEvent.getSyllabusTerms() = _GetSyllabusTerms;
}
