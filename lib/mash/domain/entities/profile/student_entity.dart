import 'package:equatable/equatable.dart';

class StudentEntity extends Equatable {
  final String userId;
  final String studentName;

  const StudentEntity({
    required this.userId,
    required this.studentName,
  });

  @override
  List<Object?> get props => [userId];
}
