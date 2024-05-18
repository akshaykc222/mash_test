import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_last_section.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_top_section.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';

class ParentDashBoard extends StatelessWidget {
  const ParentDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      body: CustomScrollView(
        slivers: [
          _header(),
          _body(context),
        ],
      ),
    );
  }

  _body(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        children: [
          ParentDashboardTopSection(),
          ParentDashboardLastSection(),
        ],
      ),
    );
  }

  Widget _header() {
    return SliverAppBar(
      expandedHeight: 200.0,
      actions: [
        _appBarIconWidget(AppAssets.noticeIcon),
        spacerWidth10,
        _appBarIconWidget(AppAssets.notificationIcon),
        spacerWidth20,
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/images/student_dummy.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _appBarIconWidget(String img) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: AppColors.black.withOpacity(0.4),
      child: assetFromSvg(img, height: 20, color: AppColors.white),
    );
  }
}
