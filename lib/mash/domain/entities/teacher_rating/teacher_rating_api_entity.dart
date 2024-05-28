import 'package:equatable/equatable.dart';


class TeacherRatingEntity extends Equatable {
  final String teacher;
  final String subject;
  final String fullName;
  final String subName;
  final String subject1;
  final String docName;
  final double rating;
  final bool ratedOrNot;

  const TeacherRatingEntity({
    required this.teacher,
    required this.subject,
    required this.fullName,
    required this.subName,
    required this.subject1,
    required this.docName,
    required this.rating,
    required this.ratedOrNot,
  });


  @override
  List<Object> get props =>
      [
        teacher,
        subject,
        fullName,
        subName,
        subject1,
        docName,
        rating,
        ratedOrNot,
      ];
}
