class AppRemoteRoutes {
  static const baseUrl = "https://uat.mash-edu.com/";
  static const baseUrlVendor = "https://app.avlview.com/";
  static const login = "UATRESTAPI/MashFlutterRestAPI/api/user/userLogin";
  static const getVehicleLocation = "api/getvehiclecurrentlocation";
  static const digitalLibrary =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getDigitalLibraryAll";
  static const updateProfile =
      "UATRESTAPI/MashFlutterRestAPI/api/user/updateStudentProfile";
  static const wordAndThougthofTheDay =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getWordThought";
  static const noticePopUp =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getNoticePopUp";
  static const classDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getClassdtls";
  // static const

  ///profile urls

  static const getSiblings =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getStudentsSiblings";
  static const getUserDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getUserDetails";
  static const noticeAll =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getNoticeAll";
  static const academicSubjects =
      'UATRESTAPI/MashFlutterRestAPI/api/user/getAcademicsubjects';

  //home work
  static const homeWorkReports =
      'UATRESTAPI/MashFlutterRestAPI/api/user/getHomeWorkReport';
  static const homeWorkDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getHomeworkDetails";
  //notes
  static const notesReports =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getNotesReport";
  static const notesDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getNotesDetails";

  static const divisionDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getDivisionDetails";

  static const syllabus = "UATRESTAPI/MashFlutterRestAPI/api/user/getSyllabus";
  static const syllabusTerms =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getSyllabusTerms";
  static const newsBoard =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getNewsBoardView";
  static const roleMenu = "UATRESTAPI/MashFlutterRestAPI/api/user/getMenu";

  // vehicle tracker url
  static const vehicleTrackerStops =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getStudentRoutes";

  // teacher url
  static const teacherRatingList =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTeacherRatingList";
  static const teacherRatingQuestions =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTeacher_Rating_QuestionList";
  static const teacherRatingInsert =
      "UATRESTAPI/MashFlutterRestAPI/api/user/insertTeacher_Ratings";

  // id module
  static const idRequestType =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getRequestType";
  static const idRequestPost =
      "UATRESTAPI/MashFlutterRestAPI/api/user/insertRfidSubmitRequest";

  // offline exam
  static const offlineExamTerms =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTermsDtls";
  static const offlineExamTimeTable =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getOfflineTimeTableList";

  //home
  static const addON = "UATRESTAPI/MashFlutterRestAPI//api/user/getAddOn";
  static const feedBackPost =
      "UATRESTAPI/MashFlutterRestAPI/api/user/InsertFeedback";

  //payment
  static const paymentDashboard =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getPaymentDashboard";

  static const paymentFinal =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getPendingFinalAmount";

  // time table
  static const dailyTimeTable =
      "UATRESTAPI/MashFlutterRestAPI/api/user/selectTimetableView";
}
