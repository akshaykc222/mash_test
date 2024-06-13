part of 'digital_library_bloc.dart';

@freezed
class DigitalLibraryState with _$DigitalLibraryState {
  const factory DigitalLibraryState(
      {ResponseClassify<List<ClassDetailsEntity>>? getClasses,
      ResponseClassify<List<DigitalLibraryEntity>>? getLibrary,
      ResponseClassify<List<AcademicTypeEntity>>? getTypes,
      ResponseClassify<List<AcademicTypeEntity>>? subCats,
      ResponseClassify<List<AcademicTypeEntity>>? mediums,
      AcademicTypeEntity? selectedSubCat,
      AcademicTypeEntity? selectedMedium,
      @Default(NonAcademicTypes.all) NonAcademicTypes selectedNonAcademic,
      ClassDetailsEntity? selectedClass}) = _DigitalLibraryState;

  factory DigitalLibraryState.initial() => const DigitalLibraryState();
}
