import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/pages/forgot_password_screen.dart';
import 'package:mash/mash/presentation/pages/login_screen.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';

import '../pages/splash_screen.dart';

class AppRouteManager {
  static GoRouter router=GoRouter(
      initialLocation: AppPages.login,
      routes: [
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
      ]);
}