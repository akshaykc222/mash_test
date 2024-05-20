import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/animated_widget.dart';

class AttendenceDetailScreen extends StatelessWidget {
  final AttendanceData data = AttendanceData(
    month: 'Jan',
    yearlyHoliday: 18,
    attendancePercentage: 94.0,
    events: 61,
    halfDayLeave: 5,
    leave: 9,
    present: 175,
    workingDays: 186,
  );

  AttendenceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _body(context),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        AppStrings.attendanceReport,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return ListView(
      children: [
        _graphWidget(),
        spacer40,
        _graphDetailsWidget(),
        spacer30,
        _otherWidget(context),
      ],
    );
  }

  Widget _otherWidget(BuildContext context) {
    return Wrap(
      children: [
        CustomAnimatedWidget(
          type: AnimationTypes.rightToLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              "Others",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            List<double> datas = [
              data.events.toDouble(),
              data.yearlyHoliday.toDouble(),
              data.leave.toDouble(),
              data.halfDayLeave.toDouble(),
            ];
            final names = [
              'Events',
              'Yearly Holidays',
              'Strenght',
            ];
            return CustomAnimatedWidget(
              type: AnimationTypes.rightToLeft,
              child: _chartDetailsWidget(
                names[index],
                datas[index],
                AppColors.blackOverlay,
                true,
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _graphDetailsWidget() {
    return Wrap(
      children: [
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final colors = [
              AppColors.graphColor3,
              AppColors.graphColor2,
              AppColors.graphColor1,
              AppColors.graphColor4,
            ];
            List<double> datas = [
              data.workingDays.toDouble(),
              data.present.toDouble(),
              data.leave.toDouble(),
              data.halfDayLeave.toDouble(),
            ];
            final names = [
              // 'Workgin Days',
              // 'Yearly Events',
              'Working Days',
              'Present',
              'Leave',
              'Half Day Leaves',
              '% of Attendence',
              // 'Class Strength'
            ];
            return CustomAnimatedWidget(
              type: AnimationTypes.rightToLeft,
              child: _chartDetailsWidget(
                names[index],
                datas[index],
                colors[index],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _graphWidget() {
    return CustomAnimatedWidget(
      type: AnimationTypes.scaleAndFade,
      child: Container(
        height: 260,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color.fromARGB(207, 140, 240, 240).withOpacity(0.3),
        ),
        child: Stack(
          children: [
            PieChart(
              swapAnimationCurve: Curves.easeIn,
              swapAnimationDuration: const Duration(seconds: 10),
              PieChartData(
                sections: [
                  PieChartSectionData(
                    badgePositionPercentageOffset: 4.9,
                    color: AppColors.graphColor3,
                    value: data.workingDays.toDouble(),
                    title: '',
                    radius: 40,
                  ),
                  PieChartSectionData(
                    color: AppColors.graphColor2,
                    value: data.present.toDouble(),
                    title: '',
                    radius: 40,
                  ),
                  PieChartSectionData(
                    color: AppColors.graphColor1,
                    value: data.leave.toDouble(),
                    title: '',
                    radius: 40,
                  ),
                  PieChartSectionData(
                    color: AppColors.graphColor4,
                    value: data.halfDayLeave.toDouble(),
                    title: '',
                    radius: 40,
                  ),
                ],
                borderData: FlBorderData(show: false),
                sectionsSpace: 0,
                centerSpaceRadius: 80,
                // Adding total percentage widget in the center
              ),
            ),
            Positioned.fill(
                child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 145,
                width: 145,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${data.attendancePercentage}%',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget _chartDetailsWidget(String name, double data, Color color,
      [bool? isOther = false]) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Row(
        children: [
          Container(
            width: isOther == true ? 16 : 8,
            height: isOther == true ? 16 : 45,
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(12),
                  top: Radius.circular(12),
                )),
          ),
          spacerWidth10,
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                data.toInt().toString(),
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
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
  final int yearlyHoliday;

  AttendanceData({
    required this.yearlyHoliday,
    required this.month,
    required this.workingDays,
    required this.events,
    required this.present,
    required this.leave,
    required this.halfDayLeave,
    required this.attendancePercentage,
  });
}
