import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/profile/profile_bloc.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_last_section.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_top_section.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/widgets/shimmers/shimmer_box.dart';
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
        background: BlocBuilder<ProfileBloc, ProfileState>(
          buildWhen: (previous, current) {
            return previous.getUserDetail?.status !=
                current.getUserDetail?.status;
          },
          builder: (context, state) {
            return state.getUserDetail?.status == Status.LOADING
                ? const ShimmerBox()
                : CachedNetworkImage(
                    errorWidget: (context, url, error) =>
                        HelperClasses.errorWidget(context),
                    imageUrl: state.getUserDetail?.data?.profilePhoto ?? "",
                    fit: BoxFit.cover,
                  );
          },
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
