import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/presentation/pages/bottomBar/bottom_navigation_bar.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/parent_dashboard_screen.dart';
import 'package:mash/mash/presentation/pages/home/addOn/add_on_screen.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/home_work_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/library_screen.dart';
// import 'package:mash/mash/presentation/pages/h/ome/timeTable/time_table.screen.dart';
import 'package:mash/mash/presentation/router/router_config.dart';
import '../../manager/cubit/bottom_navigation_cubit.dart';
import '../../utils/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(BlocProvider(
    create: (context) => BottomNavigationCubit(),
    child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.mainTheme,
      routerConfig: AppRouteManager.router,
    ),
  ));
}

class HomeScreen extends StatelessWidget {
  final int currentIndex;
  const HomeScreen({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    const screens = [
      ParentDashBoard(),
      HomeWorkScreen(),
      HomeWorkScreen(),
      LibraryScreen(),
      AddOnScreen()
    ];
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarScreen(),
      body: screens[currentIndex],
    );
  }
}
