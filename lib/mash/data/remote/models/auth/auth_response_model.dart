import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';

class AuthResponseModel extends AuthResponseEntity {
  const AuthResponseModel({
    required super.statusCode,
    required super.statusMessage,
    required super.resTable,
    required super.token,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthResponseModel(
        statusCode: json["statusCode"],
        statusMessage: json["statusMessage"],
        resTable: List<LoginResTableModel>.from(
            json["resTable"].map((x) => LoginResTableModel.fromJson(x))),
        token: json["AccessToken"],
      );
}

class LoginResTableModel extends LoginResTableEntity {
  const LoginResTableModel({
    required super.studentId,
    required super.admissionNo,
    required super.studentName,
    required super.compId,
    required super.roleId,
    required super.activeStatus,
    required super.pwdChangeStatus,
    required super.profilePhoto,
    required super.eMail,
    required super.mobile,
    required super.parentId,
    required super.academicId,
    required super.academicYear,
    required super.usrId,
    required super.divisionId,
    required super.classId,
    required super.medium,
    required super.userType,
  });

  factory LoginResTableModel.fromJson(Map<String, dynamic> json) =>
      LoginResTableModel(
        studentId: json["STUDENT_ID"],
        admissionNo: json["ADMISSION_NO"],
        studentName: json["STUDENT_NAME"],
        compId: json["COMP_ID"],
        roleId: json["ROLE_ID"].toDouble(),
        activeStatus: json["ACTIVE_STATUS"].toDouble(),
        pwdChangeStatus: json["PWD_CHANGE_STATUS"].toDouble(),
        profilePhoto: json["PROFILE_PHOTO"],
        eMail: json["E_MAIL"],
        mobile: json["MOBILE"].toDouble(),
        parentId: json["PARENT_ID"],
        academicId: json["ACADEMIC_ID"].toDouble(),
        academicYear: json["ACADEMIC_YEAR"],
        usrId: json["USR_ID"],
        divisionId: json["DIVISION_ID"].toDouble(),
        classId: json["CLASS_ID"].toDouble(),
        medium: json["MEDIUM"].toDouble(),
        userType: json["USER_TYPE"].toDouble(),
      );
}
