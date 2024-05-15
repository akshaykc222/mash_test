import 'package:mash/mash/domain/entities/syllabus/syllabus_entity.dart';

class SyllabusModel extends SyllabusEntity {
  const SyllabusModel({
    required super.subjectId,
    required super.subjectName,
    required super.chapterIds,
    required super.chapterNames,
  });
  factory SyllabusModel.fromJson(Map<String, dynamic> json) {
    final String subjectId = json['SUBJECT_ID'] ?? '';
    final String subjectName = json['SUB_NAME'] ?? '';
    final String chapterIdString = json['CHAPTER_ID'] ?? '';
    final String chapterNameString = json['CHAPTER_NM'] ?? '';

    return SyllabusModel(
      subjectId: subjectId,
      subjectName: subjectName,
      chapterIds: chapterIdString,
      chapterNames: chapterNameString,
    );
  }
}
