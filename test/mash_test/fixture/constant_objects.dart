import 'package:mash/mash/data/remote/models/auth/auth_response_model.dart';
import 'package:mash/mash/data/remote/models/request/login_request.dart';

//auth model

const tAuthModel = AuthResponseModel(
  statusCode: 200,
  statusMessage: 'Success',
  resTable: [
    LoginResTableModel(
        studentId: 'studentId',
        admissionNo: 'admissionNo',
        studentName: 'studentName',
        compId: '200001',
        roleId: '1',
        activeStatus: '1',
        pwdChangeStatus: '1',
        profilePhoto: 'profile photo',
        eMail: 'email',
        mobile: '908',
        parentId: 'ajkl',
        academicId: '1',
        academicYear: 'academic year',
        usrId: 'user id',
        divisionId: '1',
        classId: '1',
        medium: '1',
        userType: '1'),
  ],
  token: '',
);

//auth request
final tLoginRequest = LoginRequest(
  userId: 'user id',
  password: 'password',
  deviceId: '123',
  appType: 'appType',
);
