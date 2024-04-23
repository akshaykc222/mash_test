import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_student_detail_widget.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/widgets/common_bottom_sheet.dart';

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
        _buildSelectStudentWidget(context),
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

  Widget _buildSelectStudentWidget(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        onTap: () {
          commonBottomSheet(
            context,
            title: AppStrings.selectProfile,
            child: Container(
              height: 300,
              width: double.infinity,
            ),
          );
        },
        leading: const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/images/student_dummy.png'),
        ),
        title: const Text(
          'Rahul Balakrishnan',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text('3B'),
        trailing: InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: AppColors.primaryColor,
          ),
        ),
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
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/student_dummy.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
