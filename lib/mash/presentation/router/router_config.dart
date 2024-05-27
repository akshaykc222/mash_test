import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/pages/auth/forgot_password_screen.dart';
import 'package:mash/mash/presentation/pages/auth/login_screen.dart';
import 'package:mash/mash/presentation/pages/auth/otp_screen.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/attendence_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/addOn/add_on_screen.dart';
import 'package:mash/mash/presentation/pages/home/addOn/addon_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/attendanceStaff/attendance_marking_screen.dart';
import 'package:mash/mash/presentation/pages/home/attendanceStaff/class_attendance_mark_screen.dart';
import 'package:mash/mash/presentation/pages/home/competitiveExams/competitive_exam_screen.dart';
import 'package:mash/mash/presentation/pages/home/competitiveExams/exam_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/feedBack/feedback_screen.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/fee_and_payment_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/payment_history_screen.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/home_work_view_details.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/home_works_and_notes_view.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/note_view_detais_screen.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/select_home_work_and_notes_details.dart';
import 'package:mash/mash/presentation/pages/home/idCardRequest/id_card_request_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/insert_week_plan_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/insert_year_plan_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/lesson_planner_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/view_week_plan_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/view_year_plan_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/view_yearly_plan_list_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/academic_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/academics_screen.dart';
import 'package:mash/mash/presentation/pages/home/newsBoard/nb_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/newsBoard/nb_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/newsBoard/pdf_vies_screen.dart';
import 'package:mash/mash/presentation/pages/home/notes/widgets/add_note_widget.dart';
import 'package:mash/mash/presentation/pages/home/notes/widgets/note_adding_screen.dart';
import 'package:mash/mash/presentation/pages/home/noticeBoard/notice_board_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/noticeBoard/notice_board_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/physicalLibrary/physical_library_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/progressReport/progress_report.dart';
import 'package:mash/mash/presentation/pages/home/quiz/question_page.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_get_ready_screen.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_onboarding.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_profile.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_ranking_screen.dart';
import 'package:mash/mash/presentation/pages/home/suggestionBox/suggestion_box_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/suggestionBox/suggestion_screen.dart';
import 'package:mash/mash/presentation/pages/home/supportScreen/mash_support_screen.dart';
import 'package:mash/mash/presentation/pages/home/syllabus/syllabus.dart';
import 'package:mash/mash/presentation/pages/home/teacherRating/teacher_list_screen.dart';
import 'package:mash/mash/presentation/pages/home/teacherRating/teacher_rating_screen.dart';
import 'package:mash/mash/presentation/pages/home/timeTable/exam_timetable_screen.dart';
import 'package:mash/mash/presentation/pages/home/timeTable/weekly_time_table.dart';
import 'package:mash/mash/presentation/pages/home/transferCertificate/tc_cancel_screen.dart';
import 'package:mash/mash/presentation/pages/home/transferCertificate/tc_mainscreen.dart';
import 'package:mash/mash/presentation/pages/home/transferCertificate/tc_request_screen.dart';
import 'package:mash/mash/presentation/pages/home/vehicleTracker/vehicle_tracker_mainscreen.dart';
import 'package:mash/mash/presentation/pages/leave/leave_screen.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';

import '../../../core/usecase.dart';
import '../../../di/injector.dart';
import '../../domain/entities/drawer_menu_items/news_board_entity.dart';
import '../../domain/entities/home_work/home_work_entity.dart';
import '../../domain/use_cases/auth/get_user_info_use_case.dart';
import '../pages/home/home_screen.dart';
import '../pages/home/quiz/quiz_completed_screen.dart';
import '../pages/splash_screen.dart';
import '../utils/enums.dart';

class AppRouteManager {
  static home([CustomBottomNavigationItems? type]) =>
      '/${type?.index ?? ':type'}';

  static Widget _homePageRouteBuilder(
      BuildContext context, GoRouterState state) {
    return HomeScreen(
      currentIndex: int.parse(state.pathParameters['type']!),
    );
  }

  static Widget navigateByUserType(
      {required Widget staff, required Widget parent, required student}) {
    var getUser = getIt<GetUserInfoUseCase>();

    return FutureBuilder(
      future: getUser.call(NoParams()),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var user = snapshot.data;
          if (user == null) {
            return const LoginScreen();
          } else {
            switch (getUserType(user.userType)) {
              case UserTypes.staff:
                return staff;
              case UserTypes.student:
                return student;
              case UserTypes.parent:
                return parent;
              default:
                return const SizedBox();
            }
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  static GoRouter router = GoRouter(initialLocation: AppPages.splash, routes: [
    GoRoute(
      path: AppPages.home,
      name: AppPages.home,
      builder: (context, state) => const HomeScreen(
        currentIndex: 0,
      ),
    ),
    GoRoute(
      path: AppPages.splash,
      name: AppPages.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppPages.login,
      name: AppPages.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppPages.forgotPassword,
      name: AppPages.forgotPassword,
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
    GoRoute(
      path: AppPages.otpScreen,
      name: AppPages.otpScreen,
      builder: (context, state) => const OtpScreen(),
    ),
    GoRoute(
      path: AppPages.attendanceDetailScreen,
      name: AppPages.attendanceDetailScreen,
      builder: (context, state) {
        return AttendenceDetailScreen();
      },
    ),
    GoRoute(
      path: AppPages.addonDetailScreen,
      name: AppPages.addonDetailScreen,
      builder: (context, state) => const AddonDetailScreen(),
    ),
    GoRoute(
      path: AppPages.addOnScreen,
      name: AppPages.addOnScreen,
      builder: (context, state) => const AddOnScreen(),
    ),
    GoRoute(
      path: AppPages.academicLibraryScreen,
      name: AppPages.academicLibraryScreen,
      builder: (context, state) => const AcademicsScreen(),
    ),
    GoRoute(
      path: AppPages.academicDetailLibraryScreen,
      name: AppPages.academicDetailLibraryScreen,
      builder: (context, state) => const AcademicDetailScreen(),
    ),
    GoRoute(
      path: AppPages.quizOnBoardScreen,
      name: AppPages.quizOnBoardScreen,
      builder: (context, state) => const QuizOnBoarding(),
    ),
    GoRoute(
      path: AppPages.quizGetReadyScreen,
      name: AppPages.quizGetReadyScreen,
      builder: (context, state) => const QuizGetReadyScreen(),
    ),
    GoRoute(
      path: AppPages.quizQuestionPage,
      name: AppPages.quizQuestionPage,
      builder: (context, state) => const QuizQuestionPage(),
    ),
    GoRoute(
      path: AppPages.homeWorkAndNotesDateSelectionScreen,
      name: AppPages.homeWorkAndNotesDateSelectionScreen,
      builder: (context, state) => HomeWorkAndNoteSelectDetailsScreen(
        screenType: state.extra as HomeWorkAndNoteScreenType,
      ),
    ),
    GoRoute(
      path: AppPages.homeWorksViewDetailsScreen,
      name: AppPages.homeWorksViewDetailsScreen,
      builder: (context, state) => HomeWorkViewDetailsScreen(
        id: state.extra as String,
      ),
    ),
    GoRoute(
      path: AppPages.quizCompletedScreen,
      name: AppPages.quizCompletedScreen,
      builder: (context, state) => const QuizCompletedScreen(),
    ),
    GoRoute(
      path: AppPages.leaveScreen,
      name: AppPages.leaveScreen,
      builder: (context, state) => LeaveScreen(),
    ),
    GoRoute(
      name: AppPages.homeWorksAndNoteViewScreen,
      path: AppPages.homeWorksAndNoteViewScreen,
      builder: (context, state) => HomeworksAndNoteView(
        screenType: state.extra as HomeWorkAndNoteScreenType,
      ),
    ),
    GoRoute(
      path: AppPages.quizProfileScreen,
      name: AppPages.quizProfileScreen,
      builder: (context, state) => const QuizProfile(),
    ),
    GoRoute(
      path: AppPages.quizRankingScreen,
      name: AppPages.quizRankingScreen,
      builder: (context, state) => const QuizRankingScreen(),
    ),
    GoRoute(
      path: AppPages.progressReport,
      name: AppPages.progressReport,
      builder: (context, state) => const ProgressReport(),
    ),
    GoRoute(
      path: AppPages.syllabusScreen,
      name: AppPages.syllabusScreen,
      builder: (context, state) => const SyllabusScreen(),
    ),
    GoRoute(
      path: AppPages.tcMainScreen,
      name: AppPages.tcMainScreen,
      builder: (context, state) => const TransferCertificateMainScreen(),
    ),
    GoRoute(
      name: AppPages.noteViewDetails,
      path: AppPages.noteViewDetails,
      builder: (context, state) =>
          NoteViewDetailsScreen(id: state.extra as String),
    ),
    GoRoute(
      name: AppPages.noteAddTeacherScreen,
      path: AppPages.noteAddTeacherScreen,
      builder: (context, state) => const NoteAddingTeacherScreen(),
    ),
    GoRoute(
      name: AppPages.addNotScreen,
      path: AppPages.addNotScreen,
      builder: (context, state) => const AddNoteScreen(),
    ),
    GoRoute(
      name: AppPages.tcCancelScreen,
      path: AppPages.tcCancelScreen,
      builder: (context, state) => const TransferCancelScreen(),
    ),
    GoRoute(
      name: AppPages.tcRequestScreen,
      path: AppPages.tcRequestScreen,
      builder: (context, state) => const TransferRequestScreen(),
    ),
    GoRoute(
      name: AppPages.newsBoardMainScreen,
      path: AppPages.newsBoardMainScreen,
      builder: (context, state) => const NewsBoardMainScreen(),
    ),
    GoRoute(
      name: AppPages.newsBoardDetailScreen,
      path: AppPages.newsBoardDetailScreen,
      builder: (context, state) {
        return NewsBoardDetailScreen(
          newsDetails: state.extra as NewsBoardEntity,
        );
      },
    ),
    GoRoute(
      name: AppPages.noticeBoardMainScreen,
      path: AppPages.noticeBoardMainScreen,
      builder: (context, state) => const NoticeBoardMainScreen(),
    ),
    GoRoute(
      name: AppPages.noticeBoardDetailScreen,
      path: AppPages.noticeBoardDetailScreen,
      builder: (context, state) => const NoticeBoardDetailScreen(),
    ),
    GoRoute(
      name: AppPages.weeklyTimetableScreen,
      path: AppPages.weeklyTimetableScreen,
      builder: (context, state) => const WeeklyTimeTable(),
    ),
    GoRoute(
      name: AppPages.suggestionMainScreen,
      path: AppPages.suggestionMainScreen,
      builder: (context, state) => const SuggestionMainScreen(),
    ),
    GoRoute(
      name: AppPages.suggestionScreen,
      path: AppPages.suggestionScreen,
      builder: (context, state) => const SuggestionScreen(),
    ),
    GoRoute(
      name: AppPages.attendanceMarkingScreen,
      path: AppPages.attendanceMarkingScreen,
      builder: (context, state) => const AttendanceMarkingScreen(),
    ),
    GoRoute(
      name: AppPages.classAttendanceMarkingScreen,
      path: AppPages.classAttendanceMarkingScreen,
      builder: (context, state) => const ClassAttendanceMarkingScreen(),
    ),
    GoRoute(
      name: AppPages.lessonPlannerMainScreen,
      path: AppPages.lessonPlannerMainScreen,
      builder: (context, state) => const LessonPlannerMainScreen(),
    ),
    GoRoute(
      name: AppPages.insertYearPlanScreen,
      path: AppPages.insertYearPlanScreen,
      builder: (context, state) => const InsertYearPlanScreen(),
    ),
    GoRoute(
      name: AppPages.viewYearPlanScreen,
      path: AppPages.viewYearPlanScreen,
      builder: (context, state) => const ViewYearPlanScreen(),
    ),
    GoRoute(
      name: AppPages.viewYearPlanListScreen,
      path: AppPages.viewYearPlanListScreen,
      builder: (context, state) => const ViewYearlyPlanListScreen(),
    ),
    GoRoute(
      name: AppPages.insertWeekPlanScreen,
      path: AppPages.insertWeekPlanScreen,
      builder: (context, state) => const InsertWeekPlanScreen(),
    ),
    GoRoute(
      name: AppPages.viewWeekPlansScreen,
      path: AppPages.viewWeekPlansScreen,
      builder: (context, state) => const ViewWeekPlanScreen(),
    ),
    GoRoute(
      name: AppPages.supportScreen,
      path: AppPages.supportScreen,
      builder: (context, state) => const MashSupportScreen(),
    ),
    GoRoute(
      name: AppPages.feedbackScreen,
      path: AppPages.feedbackScreen,
      builder: (context, state) => const FeedbackScreen(),
    ),
    GoRoute(
      name: AppPages.idCardRequestScreen,
      path: AppPages.idCardRequestScreen,
      builder: (context, state) => const IdCardRequestScreen(),
    ),
    GoRoute(
      name: AppPages.competitiveExamScreen,
      path: AppPages.competitiveExamScreen,
      builder: (context, state) => const CompetitiveExamScreen(),
    ),
    GoRoute(
      name: AppPages.feesAndPaymentScreen,
      path: AppPages.feesAndPaymentScreen,
      builder: (context, state) => const FeesAndPaymentMainScreen(),
    ),
    GoRoute(
      name: AppPages.paymentHistoryScreen,
      path: AppPages.paymentHistoryScreen,
      builder: (context, state) => const PaymentHistoryScreen(),
    ),
    GoRoute(
      name: AppPages.examTimetableScreen,
      path: AppPages.examTimetableScreen,
      builder: (context, state) => const ExamTimeTableScreen(),
    ),
    GoRoute(
      name: AppPages.physicalLibraryScreen,
      path: AppPages.physicalLibraryScreen,
      builder: (context, state) => const PhysicalLibraryMainScreen(),
    ),
    GoRoute(
      name: AppPages.vehicleTracker,
      path: AppPages.vehicleTracker,
      builder: (context, state) => const VehicleTrackerMainScreen(),
    ),
    GoRoute(
      name: AppPages.teacherRatingListScreen,
      path: AppPages.teacherRatingListScreen,
      builder: (context, state) => const TeacherListScreen(),
    ),
    GoRoute(
      name: AppPages.teacherRatingScreen,
      path: AppPages.teacherRatingScreen,
      builder: (context, state) => const TeacherRatingScreen(),
    ),
    GoRoute(
      name: AppPages.examDetailScreen,
      path: AppPages.examDetailScreen,
      builder: (context, state) {
        if (state.extra != null) {
          return ExamDetailScreen(isRegistered: state.extra as bool);
        }

        return SizedBox();
        return const SizedBox();
      },
    ),
    GoRoute(
      name: AppPages.pdfViewScreen,
      path: AppPages.pdfViewScreen,
      builder: (context, state) => PdfVieweScreen(
        path: state.extra as String,
      ),
    ),
    GoRoute(path: home(), builder: _homePageRouteBuilder)
  ]);
}
