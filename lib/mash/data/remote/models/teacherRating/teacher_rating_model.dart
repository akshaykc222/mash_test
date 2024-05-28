

import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_api_entity.dart';

class TeacherRatingModel extends TeacherRatingEntity{
  const TeacherRatingModel({required super.teacher, required super.subject, required super.fullName, required super.subName, required super.subject1, required super.docName, required super.rating, required super.ratedOrNot});


  factory TeacherRatingModel.fromJson(Map<String, dynamic> json) {
    return TeacherRatingModel(
      teacher: json['TEACHER'],
      subject: json['SUBJECT'],
      fullName: json['FULL_NAME'],
      subName: json['SUB_NAME'],
      subject1: json['SUBJECT1'],
      docName: json['DOC_NAME'],
      rating: double.parse(json['RATING']),
      ratedOrNot: json['RATED_OR_NOT'] == '1',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'TEACHER': teacher,
      'SUBJECT': subject,
      'FULL_NAME': fullName,
      'SUB_NAME': subName,
      'SUBJECT1': subject1,
      'DOC_NAME': docName,
      'RATING': rating.toString(),
      'RATED_OR_NOT': ratedOrNot ? '1' : '0',
    };
  }
}