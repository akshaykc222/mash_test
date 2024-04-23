import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_student_detail_widget.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

import '../../../../utils/app_assets.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/size_utility.dart';
import '../../../../widgets/svg_asset_img.dart';

class ParentDashboardTopSection extends StatelessWidget {
  const ParentDashboardTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spacer26,
        _buildSelectStudentWidget(),
        const ParentDashboardStudentDetailWidget(),
        _viewCalenderBtn(context),
      ],
    );
  }

  Widget _viewCalenderBtn(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(SizeUtility(context).width / 2, 45),
        elevation: 2,
        backgroundColor: AppColors.white,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          assetFromSvg(
            AppAssets.timeTableIcon,
            color: AppColors.primaryColor,
          ),
          spacerWidth10,
          Text(
            AppStrings.viewCalendar,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.black,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSelectStudentWidget() {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          'assets/images/student_dummy.png',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text('Title Text'),
      subtitle: Text('Subtitle Text'),
      trailing: Text(
        'Switch account',
        style: TextStyle(),
      ),
    );
    //   Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     _buildSelectStudentProfileWidget(),
    //     _buildSelectStudentProfileWidget(width: 70, height: 70),
    //     _buildSelectStudentProfileWidget(),
    //   ],
    // );
  }

  Widget _buildSelectStudentProfileWidget(
      {double height = 50, double? width = 50}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: const DecorationImage(
          image: AssetImage('assets/images/student_dummy.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
