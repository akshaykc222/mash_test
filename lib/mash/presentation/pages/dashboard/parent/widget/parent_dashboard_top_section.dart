import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_student_detail_widget.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';

import '../../../../utils/app_assets.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_strings.dart';

class ParentDashboardTopSection extends StatelessWidget {
  const ParentDashboardTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spacer20,
        HelperClasses.getSelectedStudent(context),
        const ParentDashboardStudentDetailWidget(),
        _viewCalenderBtn(context),
      ],
    );
  }

  Widget _viewCalenderBtn(BuildContext context) {
    return CustomIconButton(
      onTap: () {
        context.push(AppPages.dashboardCalendar);
      },
      icon: AppAssets.timeTableIcon,
      name: AppStrings.viewCalendar,
    );
  }
}
