import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_student_detail_widget.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/student_profile_widget.dart';
import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';

import '../../../../utils/app_assets.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_strings.dart';
import '../../../../widgets/common_bottom_sheet.dart';

class ParentDashboardTopSection extends StatelessWidget {
  const ParentDashboardTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spacer20,
        StudentProfileWidget(
          onTap: () async {
            _showModelSheet(context);
          },
        ),
        const ParentDashboardStudentDetailWidget(),
        _viewCalenderBtn(context),
      ],
    );
  }

  Future<void> _showModelSheet(BuildContext context) {
    return commonBottomSheet(
      context,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return StudentProfileWidget(
              onTap: () {},
            );
          },
          separatorBuilder: (context, index) => spacer10,
          itemCount: 3),
      title: AppStrings.selectProfile,
      height: 0.55,
    );
  }

  Widget _viewCalenderBtn(BuildContext context) {
    return CustomIconButton(
      onTap: () {},
      icon: AppAssets.timeTableIcon,
      name: AppStrings.viewCalendar,
    );
  }
}
