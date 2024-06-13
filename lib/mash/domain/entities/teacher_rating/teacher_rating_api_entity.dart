import 'package:equatable/equatable.dart';


class TeacherRatingEntity extends Equatable {
  final String teacherId;
  final String subjectId;
  final String fullName;
  final String subjectName;
  final String docName;
  final String rating;
  final bool ratedOrNot;
  final String primaryMobile;
  final String primaryEmail;

  const TeacherRatingEntity({required this.teacherId, required this.subjectId, required this.fullName, required this.subjectName, required this.docName, required this.rating, required this.ratedOrNot, required this.primaryMobile, required this.primaryEmail});








  @override
  List<Object> get props =>
      [
        teacherId,
        subjectId,
        fullName,
        subjectName,
        docName,
        docName,
        rating,
        ratedOrNot,
        primaryMobile,
        primaryEmail
      ];
}
