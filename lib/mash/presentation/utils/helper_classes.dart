import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/response_classify.dart';
import '../manager/bloc/profile_bloc/profile_bloc.dart';
import '../pages/dashboard/parent/widget/student_profile_widget.dart';
import '../widgets/common_bottom_sheet.dart';
import '../widgets/shimmers/custom_shimmer_widget.dart';
import '../widgets/shimmers/grid_shimmer.dart';
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



  static Widget getSelectedStudent(BuildContext context, bool dontPadd,
      {Function(String)? listenFunction}) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listenWhen: (previous, current) {
        if (previous.selectedSibling != current.selectedSibling) {
          return true;
        }
        return false;
      } ,
      listener: (context, state) {
        if(listenFunction!=null){
          listenFunction(state.selectedSibling?.userId??"");
        }


      },
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
            : state.selectedSibling == null ||
                    state.getSiblings?.data?.isEmpty == true
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
      child: Lottie.asset(AppAssets.noDataLottie, height: 100),
    );
  }

  static Widget personPlaceHolderImage({required double height,required double width}) {
    return Container(
      height: height ,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/place_holder_image.jpg',)
      )
      ),
    );
  }


  static Future<dynamic> showDialogWithButton({
    required String messageTitle,required String message,required submitButtonTitle
    ,required BuildContext context,required VoidCallback onYesTap,}){
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 5,
          backgroundColor: Colors.red.shade50,
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                  width: 5,
                  color: AppColors.purpleLightBorder)),
          title: Text(messageTitle),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: onYesTap,
              child: Text(submitButtonTitle),
            ),
          ],
        );
      },
    );
}

  static Future<dynamic> showDialogWithoutButton({
    required String messageTitle,required String message
    ,required BuildContext context,}){
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.red.shade50,
          shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                  width: 5,
                  color: AppColors.purpleLightBorder)),
          title: Text(messageTitle),
          content: Text(message),
        );
      },
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

  static Widget shimmerPlacerHolder() => const ShimmerPlaceholder();
  static Widget shimmerPlacerHolderGrid() => const ProductGridShimmer();
  static Widget shimmerPlacerHolderList() => ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => const ShimmerPlaceholder(),
      );
}

class ShimmerPlaceholder extends StatelessWidget {
  const ShimmerPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: 50,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
    );
  }
}
