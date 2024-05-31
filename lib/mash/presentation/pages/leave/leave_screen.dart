import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/attendence_detail_screen.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/animated_widget.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../widgets/drawer_widget.dart';

class LeaveScreen extends StatelessWidget {
  LeaveScreen({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'LEAVE'),
      body: leaveBody(),
      drawer: const DrawerWidget(),
    );
  }

  leaveBody() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            _leaveCard(() {}, AppAssets.leaveApply, 'APPLY LEAVE'),
            _leaveCard(() {}, AppAssets.leaveStatus, 'STATUS'),
            spacer20,
            _graphWidget(),
            spacer20,
            _graphDetailsWidget()
          ],
        ),
      ),
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

  _leaveCard(onPress, assetName, title) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
          onTap: onPress,
          child: Container(
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(assetName),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.all(15.0), child: Text(title)),
                )
              ],
            ),
          )),
    );
  }
}
