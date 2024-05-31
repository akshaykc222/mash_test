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
          ],
        ),
      ),
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
