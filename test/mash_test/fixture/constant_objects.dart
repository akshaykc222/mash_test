import 'package:mash/mash/data/remote/models/auth/auth_response_model.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';
import 'package:mash/mash/data/remote/models/notice/notice_pop_up_model.dart';
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart';
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
/* 
dashboard
*/

//--> word thought
const tWordThoughtModel =
    WordThoughtsModel(statusCode: 200, statusMessage: 'message', wordTable: [
  WordTableModel(
      wordId: 12,
      wordName: 'wordName',
      wordMeaning1: 'wordMeaning1',
      wordMeaning2: 'wordMeaning2',
      hasImg: 'hasImg',
      wordImage: 'wordImage',
      status: 1,
      compId: 1,
      createdBy: 'createdBy'),
], thoughtTable: [
  ThoughtTableModel(
    thoughtId: 1,
    thoughtOfTheDayUrl: 'thoughtOfTheDayUrl',
    publishedDate: 'publishedDate',
  ),
]);

//--> word thought response
final tWordThoughtRequest =
    WordThoughtRequest(pAcademicId: '87', pCompID: '200001');
/* 
notice
*/

//-->notice pop up

const tNoticePopUpModel = NoticePopUpModel(
  topicHead: 'Sample Topic Head',
  topicDesc: 'Sample Topic Description',
  noticeDate: '2024-05-07',
  docFile: 'sample_document.pdf',
  ext: 'pdf',
);
