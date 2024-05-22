import 'package:mash/mash/domain/entities/profile/student_entity.dart';

class StudentModel extends StudentEntity {
  const StudentModel({required super.userId, required super.studentName});

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      userId: json['USR_ID'] as String,
      studentName: json['STUDENT_NM'] as String,
    );
  }

  // Method to convert a Student to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'USR_ID': userId,
      'STUDENT_NM': studentName,
    };
  }
}
