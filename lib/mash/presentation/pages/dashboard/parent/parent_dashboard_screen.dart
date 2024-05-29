import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/profile/profile_bloc.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_last_section.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_top_section.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/widgets/shimmers/custom_shimmer_widget.dart';

import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';

import '../../../widgets/drawer_widget.dart';

class ParentDashBoard extends StatelessWidget {
  const ParentDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      body: CustomScrollView(
        slivers: [
          _header(context),
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

  Widget _header(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200.0,
      actions: [
        _appBarIconWidget(
          AppAssets.noticeIcon,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.noticeBoardMainScreen);
          },
        ),
        spacerWidth10,
        _appBarIconWidget(
          AppAssets.notificationIcon,
          onTap: () {},
        ),
        spacerWidth20,
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: BlocBuilder<ProfileBloc, ProfileState>(
          buildWhen: (previous, current) {
            return previous.getUserDetail?.status !=
                current.getUserDetail?.status;
          },
          builder: (context, state) {
            return state.getUserDetail?.status == Status.LOADING
                ? const CustomShimmerWidget(
              height: 200,
            )
                : HelperClasses.cachedNetworkImage(
              height: 200,
              imageUrl: state.getUserDetail?.data?.profilePhoto ?? "",
            );
          },
        ),
      ),
    );
  }

  Widget _appBarIconWidget(String img, {required VoidCallback onTap}) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: CircleAvatar(
        radius: 15,
        backgroundColor: AppColors.black.withOpacity(0.4),
        child: assetFromSvg(img, height: 20, color: AppColors.white),
      ),
    );
  }
}
