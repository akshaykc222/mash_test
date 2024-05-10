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
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/home_works_view.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/select_home_work_details_widget.dart';
import 'package:mash/mash/presentation/pages/home/library/academic_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/academics_screen.dart';
import 'package:mash/mash/presentation/pages/home/newsBoard/nb_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/newsBoard/nb_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/notes/note_screen.dart';
import 'package:mash/mash/presentation/pages/home/notes/widgets/add_note_widget.dart';
import 'package:mash/mash/presentation/pages/home/notes/widgets/note_adding_screen.dart';
import 'package:mash/mash/presentation/pages/home/noticeBoard/notice_board_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/noticeBoard/notice_board_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/progressReport/progress_report.dart';
import 'package:mash/mash/presentation/pages/home/quiz/question_page.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_get_ready_screen.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_onboarding.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_profile.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_ranking_screen.dart';
import 'package:mash/mash/presentation/pages/home/suggestionBox/suggestion_box_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/syllabus/syllabus.dart';
import 'package:mash/mash/presentation/pages/home/timeTable/weekly_time_table.dart';
import 'package:mash/mash/presentation/pages/home/transferCertificate/tc_cancel_screen.dart';
import 'package:mash/mash/presentation/pages/home/transferCertificate/tc_mainscreen.dart';
import 'package:mash/mash/presentation/pages/home/transferCertificate/tc_request_screen.dart';
import 'package:mash/mash/presentation/pages/leave/leave_screen.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';

import '../pages/home/home_screen.dart';
import '../pages/home/quiz/quiz_completed_screen.dart';
import '../pages/home/suggestionBox/suggestion_screen.dart';
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

  static GoRouter router = GoRouter(initialLocation: AppPages.attendanceMarkingScreen, routes: [
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
      path: AppPages.homeWorkDetailsScreen,
      name: AppPages.homeWorkDetailsScreen,
      builder: (context, state) => const HomeWorkSelectDetailsWidget(),
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
      name: AppPages.homeWorksViewScreen,
      path: AppPages.homeWorksViewScreen,
      builder: (context, state) => const HomeworksView(),
    ),
    GoRoute(
      name: AppPages.noteScreen,
      path: AppPages.noteScreen,
      builder: (context, state) => const NoteScreen(),
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
      builder: (context, state) => const NewsBoardDetailScreen(),
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
    ),GoRoute(
      name: AppPages.suggestionMainScreen,
      path: AppPages.suggestionMainScreen,
      builder: (context, state) => const SuggestionMainScreen(),
    ),GoRoute(
      name: AppPages.suggestionScreen,
      path: AppPages.suggestionScreen,
      builder: (context, state) => const SuggestionScreen(),
    ),GoRoute(
      name: AppPages.attendanceMarkingScreen,
      path: AppPages.attendanceMarkingScreen,
      builder: (context, state) => const AttendanceMarkingScreen(),
    ),GoRoute(
      name: AppPages.classAttendanceMarkingScreen,
      path: AppPages.classAttendanceMarkingScreen,
      builder: (context, state) => const ClassAttendanceMarkingScreen(),
    ),
    GoRoute(path: home(), builder: _homePageRouteBuilder)
  ]);
}
