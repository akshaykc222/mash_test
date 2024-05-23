import 'package:equatable/equatable.dart';

class StudentEntity extends Equatable {
  final String userId;
  final String studentName;
  final String divisionName;
  final String profilePhoto;

  const StudentEntity({
    required this.divisionName,
    required this.profilePhoto,
    required this.userId,
    required this.studentName,
  });

  @override
  List<Object?> get props => [userId];
}
