import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/pages/auth/forgot_password_screen.dart';
import 'package:mash/mash/presentation/pages/auth/login_screen.dart';
import 'package:mash/mash/presentation/pages/auth/otp_screen.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/attendence_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/addOn/add_on_screen.dart';
import 'package:mash/mash/presentation/pages/home/addOn/addon_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/home_works_view.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/select_home_work_details_widget.dart';
import 'package:mash/mash/presentation/pages/home/library/academic_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/academics_screen.dart';
import 'package:mash/mash/presentation/pages/home/notes/note_screen.dart';
import 'package:mash/mash/presentation/pages/home/notes/widgets/add_note_widget.dart';
import 'package:mash/mash/presentation/pages/home/notes/widgets/note_adding_screen.dart';
import 'package:mash/mash/presentation/pages/home/quiz/question_page.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_get_ready_screen.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_onboarding.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';

import '../pages/home/home_screen.dart';
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
      path: AppPages.homeWorkDetailsScreen,
      name: AppPages.homeWorkDetailsScreen,
      builder: (context, state) => const HomeWorkSelectDetailsWidget(),
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
      name: AppPages.noteAddTeacherScreen,
      path: AppPages.noteAddTeacherScreen,
      builder: (context, state) => const NoteAddingTeacherScreen(),
    ),
    GoRoute(
      name: AppPages.addNotScreen,
      path: AppPages.addNotScreen,
      builder: (context, state) => const AddNoteScreen(),
    ),
    GoRoute(path: home(), builder: _homePageRouteBuilder)
  ]);
}
