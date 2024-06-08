part of 'digital_library_bloc.dart';

@freezed
class DigitalLibraryEvent with _$DigitalLibraryEvent {
  const factory DigitalLibraryEvent.started() = _Started;
  const factory DigitalLibraryEvent.getClasses() = _GetClasses;
  const factory DigitalLibraryEvent.getTypes(String moduleName, String pJson) =
      _GetTypes;
  const factory DigitalLibraryEvent.selectMedium(AcademicTypeEntity selected) =
      _SelectMedium;
  const factory DigitalLibraryEvent.selectSubCat(AcademicTypeEntity selected) =
      _SelectSubCat;
  const factory DigitalLibraryEvent.getNonAcademic(
      {String? typeId, String? catId, String? subId}) = _GetNonAcademic;
  const factory DigitalLibraryEvent.selectNonAcademicType(
      NonAcademicTypes selected) = _SelectNonAcademicType;

  const factory DigitalLibraryEvent.getLibrary(DigitalLibraryRequest request) =
      _GetLibrary;
  const factory DigitalLibraryEvent.selectClass(ClassDetailsEntity selected) =
      _SelectClass;
}
