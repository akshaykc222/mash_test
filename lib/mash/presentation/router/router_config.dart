import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';

import '../pages/splash_screen.dart';

class AppRouteManager {
  static GoRouter router=GoRouter(
      initialLocation: AppPages.splash,
      routes: [
    GoRoute(
      path: AppPages.splash,
      builder: (context, state) => const SplashScreen(),
    ),
  ]);
}