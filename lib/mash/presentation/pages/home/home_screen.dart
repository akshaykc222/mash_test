import 'package:flutter/material.dart';

import 'package:mash/mash/presentation/pages/bottomBar/bottom_navigation_bar.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/parent_dashboard_screen.dart';
import 'package:mash/mash/presentation/pages/dashboard/teacher_dashboard.dart';
import 'package:mash/mash/presentation/pages/home/addOn/add_on_screen.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/home_work_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/library_screen.dart';
import 'package:mash/mash/presentation/pages/home/timeTable/time_table_main_screen.dart';
// import 'package:mash/mash/presentation/pages/h/ome/timeTable/time_table.screen.dart';
import 'package:mash/mash/presentation/router/router_config.dart';

class HomeScreen extends StatefulWidget {
  final int currentIndex;
  const HomeScreen({super.key, required this.currentIndex});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    _init();
    super.initState();
  }

  final List<Widget> _screens = [];
  List<Widget> _init() {
    _screens.add(
      AppRouteManager.navigateByUserType(
        parent: const ParentDashBoard(),
        staff: const TeacherDashboard(),
        student: const ParentDashBoard(),
      ),
    );
    _screens.addAll([
      const TimeTableScreen(),
      const HomeWorkScreen(),
      const LibraryScreen(),
      const AddOnScreen()
    ]);
    return _screens;
  }

  @override
  Widget build(BuildContext context) {
    //Widget getWidget = await  AppRouteManager.navigateByUserType(staff: staff, parent: parent, student: student)
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarScreen(),
      body: _screens[widget.currentIndex],
    );
  }
}
