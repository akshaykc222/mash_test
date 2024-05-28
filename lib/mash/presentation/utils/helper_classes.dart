import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';

import '../../../core/response_classify.dart';
import '../manager/profile_bloc/profile_bloc.dart';
import '../manager/bloc/profile/profile_bloc.dart';
import '../pages/dashboard/parent/widget/student_profile_widget.dart';
import '../widgets/common_bottom_sheet.dart';
import '../widgets/shimmers/custom_shimmer_widget.dart';
import 'app_constants.dart';
import 'app_strings.dart';

class HelperClasses {
  static showStudentSwitchDialog(BuildContext context) {
    final profileBloc = ProfileBloc.get(context);
    return commonBottomSheet(
      context,
      child: BlocBuilder<ProfileBloc, ProfileState>(
        buildWhen: (previous, current) {
          if (previous.getSiblings?.status != current.getSiblings?.status) {
            return true;
          }
          return false;
        },
        builder: (context, state) {
          return ListView.separated(
              itemBuilder: (context, index) {
                return StudentProfileWidget(
                  onTap: () {
                    profileBloc.add(ProfileEvent.selectSibling(
                        student: state.getSiblings!.data![index]));
                    context.pop();
                  },
                  entity: state.getSiblings!.data![index],
                  isOnList: true,
                );
              },
              separatorBuilder: (context, index) => spacer10,
              itemCount: state.getSiblings?.data?.length ?? 0);
        },
      ),
      title: AppStrings.selectProfile,
      height: 0.55,
    );
  }

  static Widget getSelectedStudent(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (previous, current) {
        if (previous.selectedSibling != current.selectedSibling) {
          return true;
        } else if (previous.getSiblings?.status !=
            current.getSiblings?.status) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return state.getSiblings?.status == Status.LOADING
            ? const CustomShimmerWidget(
                height: 60,
              )
            : state.selectedSibling == null
                ? const SizedBox()
                : StudentProfileWidget(
                    onTap: () async {
                      HelperClasses.showStudentSwitchDialog(context);
                    },
                    entity: state.selectedSibling!,
                  );
      },
    );
  }

  static Widget emptyDataWidget() {
    return Center(
      child: Lottie.asset(AppAssets.noDataLottie, height: 300),
    );
  }

  static Widget errorWidget(BuildContext context) => const SizedBox();
}
