

import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_api_entity.dart';

class TeacherRatingModel extends TeacherRatingEntity{
  const TeacherRatingModel({required super.teacherId, required super.subjectId, required super.fullName, required super.subjectName, required super.docName, required super.rating, required super.ratedOrNot, required super.primaryMobile, required super.primaryEmail});



  factory TeacherRatingModel.fromJson(Map<String, dynamic> json) {
    return TeacherRatingModel(
      teacherId: json['TEACHER'] as String,
      subjectId: json['SUBJECT'] as String,
      fullName: json['FULL_NAME'] as String,
      subjectName: json['SUB_NAME'] as String,
      docName: json['DOC_NAME'] as String,
      rating: json['RATING'] as String,
      ratedOrNot: json['RATED_OR_NOT'] == "1",
      primaryMobile: json['PRIMARY_MOBILE'] as String,
      primaryEmail: json['PRIMARY_EMAIL'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'TEACHER': teacherId,
      'SUBJECT': subjectId,
      'FULL_NAME': fullName,
      'SUB_NAME': subjectName,
      'DOC_NAME': docName,
      'RATING': rating,
      'RATED_OR_NOT': ratedOrNot ? "1" : "0",
      'PRIMARY_MOBILE': primaryMobile,
      'PRIMARY_EMAIL': primaryEmail,
    };
  }
}