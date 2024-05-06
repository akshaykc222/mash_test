import 'package:equatable/equatable.dart';

class AuthResponseEntity extends Equatable {
  const AuthResponseEntity({
    required this.statusMessage,
    required this.resTable,
    required this.statusCode,
    required this.token,
  });

  final int statusCode;
  final String statusMessage;
  final List<LoginResTableEntity> resTable;
  final String token;

  @override
  List<Object?> get props => [];
}

class LoginResTableEntity extends Equatable {
  const LoginResTableEntity({
    required this.studentId,
    required this.admissionNo,
    required this.studentName,
    required this.compId,
    required this.roleId,
    required this.activeStatus,
    required this.pwdChangeStatus,
    required this.profilePhoto,
    required this.eMail,
    required this.mobile,
    required this.parentId,
    required this.academicId,
    required this.academicYear,
    required this.usrId,
    required this.divisionId,
    required this.classId,
    required this.medium,
    required this.userType,
  });

  final String studentId;
  final String admissionNo;
  final String studentName;
  final String compId;
  final double roleId;
  final double activeStatus;
  final double pwdChangeStatus;
  final String profilePhoto;
  final String eMail;
  final double mobile;
  final String parentId;
  final double academicId;
  final String academicYear;
  final String usrId;
  final double divisionId;
  final double classId;
  final double medium;
  final double userType;

  @override
  List<Object?> get props => [];
}
