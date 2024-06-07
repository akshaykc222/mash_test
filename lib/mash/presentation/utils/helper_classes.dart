import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

import '../../../core/response_classify.dart';
import '../manager/bloc/profile_bloc/profile_bloc.dart';
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

  static Widget getSelectedStudent(BuildContext context, bool dontPadd) {
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
        prettyPrint(state.getSiblings.toString());
        return state.getSiblings?.status == Status.LOADING
            ? const CustomShimmerWidget(
                height: 60,
                borderRadius: 6,
                marginVertical: 20,
              )
            : state.selectedSibling == null
                ? const SizedBox()
                : StudentProfileWidget(
                    onTap: () async {
                      HelperClasses.showStudentSwitchDialog(context);
                    },
                    entity: state.selectedSibling!,
                    dontPadd: dontPadd,
                  );
      },
    );
  }

  static Widget emptyDataWidget() {
    return Center(
      child: Lottie.asset(AppAssets.noDataLottie, height: 100),
    );
  }

  static cachedNetworkImage(
      {required String imageUrl,
      double? height,
      double? width,
      BoxFit boxFit = BoxFit.cover}) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: boxFit,
      // placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error_outline),
    );
  }

  static cachedNetworkImageProvider(
      {required String imageUrl,
      double? height,
      double? width,
      BoxFit boxFit = BoxFit.cover}) {
    return CachedNetworkImageProvider(
      imageUrl,
    );
  }

  static Widget errorWidget(BuildContext context) => const SizedBox();
  static showSnackBar({required String msg, Color color = Colors.black}) =>
      Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: color.withOpacity(0.7),
        textColor: AppColors.white,
        fontSize: SizeConfig.textSize(14),
      );
}
