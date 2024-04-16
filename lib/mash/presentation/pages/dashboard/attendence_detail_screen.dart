import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/animated_widget.dart';

class AttendenceDetailScreen extends StatelessWidget {
  final AttendanceData data = AttendanceData(
    month: 'Jan',
    attendancePercentage: 90.0,
    events: 90,
    halfDayLeave: 70,
    leave: 89,
    present: 120,
    workingDays: 17,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.attendenceReport,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomAnimatedWidget(
              type: AnimationTypes.scaleAndFade,
              child: Container(
                height: 280,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      const Color.fromARGB(255, 183, 228, 228).withOpacity(0.3),
                ),
                child: PieChart(
                  swapAnimationCurve: Curves.easeIn,
                  swapAnimationDuration: const Duration(seconds: 10),
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        badgePositionPercentageOffset: 4.9,
                        color: Colors.red,
                        value: data.events.toDouble(),
                        title: data.month,
                        radius: 40,
                      ),
                      PieChartSectionData(
                        color: Colors.green,
                        value: data.halfDayLeave.toDouble(),
                        title: data.month,
                        radius: 40,
                      ),
                      PieChartSectionData(
                        color: Colors.yellow,
                        value: data.leave.toDouble(),
                        title: data.month,
                        radius: 40,
                      ),
                      PieChartSectionData(
                        color: Colors.blue,
                        value: data.present.toDouble(),
                        title: data.month,
                        radius: 40,
                      ),
                    ],
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 0,
                    centerSpaceRadius: 80,
                    // Adding total percentage widget in the center
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AttendanceData {
  final String month;
  final int workingDays;
  final int events;
  final int present;
  final int leave;
  final int halfDayLeave;
  final double attendancePercentage;

  AttendanceData({
    required this.month,
    required this.workingDays,
    required this.events,
    required this.present,
    required this.leave,
    required this.halfDayLeave,
    required this.attendancePercentage,
  });
}
