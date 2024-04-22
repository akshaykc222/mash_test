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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(Icons.arrow_back_ios),
        _buildSelectStudentProfileWidget(),
        _buildSelectStudentProfileWidget(),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }

  Widget _buildSelectStudentProfileWidget() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.primaryColor,
          width: 3,
        ),
        image: const DecorationImage(
          image: AssetImage('assets/images/student_dummy.png'),
        ),
      ),
    );
  }
}
