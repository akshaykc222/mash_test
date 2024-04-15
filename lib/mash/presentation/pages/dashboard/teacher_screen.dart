import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';

void main() {
  runApp(MaterialApp(
    home: TeacherDashboard(),
  ));
}

class TeacherDashboard extends StatefulWidget {
  const TeacherDashboard({super.key});

  @override
  State<TeacherDashboard> createState() => _TeacherDashboardState();
}

class _TeacherDashboardState extends State<TeacherDashboard> {
  late MediaQueryData mediaQuery;

  @override
  void didChangeDependencies() {
    mediaQuery = MediaQuery.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _header(),
          _body(),
        ],
      ),
    );
  }

  Widget _header() => SliverAppBar(
        expandedHeight: 200.0,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.network(
            'https://th.bing.com/th/id/OIP.HgH-NjiOdFOrkmwjsZCCfAAAAA?rs=1&pid=ImgDetMain',
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget _body() => SliverFillViewport(
          delegate: SliverChildListDelegate([
        _basicDetails(),
      ]));
  Widget _basicDetails() {
    return Column(
      children: [
        spacer20,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "AKSHAY K.C",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColors.headText),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Divider(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Employee Id  - ",
              style: TextStyle(fontSize: 12, color: AppColors.textColorNew),
            ),
            Text("00045",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColorNew))
          ],
        ),
        SizedBox(
          height: mediaQuery.size.height * 0.06,
        ),
        _buildSchedules()
      ],
    );
  }

  Widget _buildSchedules() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.schedulesForClass,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColorNew),
              ),
              Text(AppStrings.viewAll)
            ],
          )
        ],
      ),
    );
  }
}
