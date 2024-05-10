import 'package:mash/mash/data/remote/models/auth/auth_response_model.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';
import 'package:mash/mash/data/remote/models/notice/notice_pop_up_model.dart';
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart';
import 'package:mash/mash/data/remote/models/request/login_request.dart';

//auth model

const tAuthModel = AuthResponseModel(
  statusCode: 200,
  statusMessage: 'SUCCESS',
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
      mobile: '1',
      parentId: 'parentId',
      academicId: '1',
      academicYear: 'academic year',
      usrId: 'user id',
      divisionId: '1',
      classId: '1',
      medium: '1',
      userType: '1',
    ),
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
WordThoughtsModel tWordThoughtModel = const WordThoughtsModel(
    statusCode: 200,
    statusMessage: 'SUCCESS',
    wordTable: [
      WordTableModel(
        wordId: '146',
        wordName: 'IDIOSYNCRATIC',
        wordMeaning1: "1 . Something peculiar to an individual",
        wordMeaning2:
            "2 . His teaching methods are idiosyncratic but successful.",
        hasImg: "0",
        wordImage: "",
        status: "1",
        compId: "200001",
        createdBy: "M357751",
      ),
    ],
    thoughtTable: [
      ThoughtTableModel(
        thoughtId: "21543",
        thoughtOfTheDayUrl:
            "https://schmadutheme-mash.s3.ap-south-1.amazonaws.com/Thought_UAT20240418_125655254.jpg?X-Amz-Expires=3600&response-content-disposition=inline&response-content-type=image%2Fpng&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAUJA3RQ7HZZJJJS56%2F20240510%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20240510T054322Z&X-Amz-SignedHeaders=host&X-Amz-Signature=d2534c3a2b9e54c69b12755dfdb8f3102bf1b4406261ea91c9e963dc80bf63d3",
        publishedDate: "5/10/2024 12:00:00 AM",
      ),
    ]);

//--> word thought response
final tWordThoughtRequest =
    AcademicAndCompIdRequest(pAcademicId: '87', pCompID: '200001');
/*
notice
*/

//-->notice pop up

NoticePopUpModel tNoticePopUpModel = const NoticePopUpModel(
  topicHead: 'Sample Topic Head',
  topicDesc: 'Sample Topic Description',
  noticeDate: '2024-05-07',
  docFile: 'sample_document.pdf',
  ext: 'pdf',
);
