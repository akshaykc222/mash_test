import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';

import '../../../../../domain/entities/dashboard/word_thought_entity.dart';
import '../../../../manager/bloc/dashboard_bloc/dashboard_bloc.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/size_utility.dart';
import '../../../../widgets/svg_asset_img.dart';

class DashboardCommonLastWidget extends StatefulWidget {
  const DashboardCommonLastWidget({super.key});

  @override
  State<DashboardCommonLastWidget> createState() =>
      _DashboardCommonLastWidgetState();
}

class _DashboardCommonLastWidgetState extends State<DashboardCommonLastWidget> {
  @override
  void initState() {
    BlocProvider.of<DashboardBloc>(context).add(
      DashboardEvent.fetchWordAndThoughtOftheDayEvent(
        context,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _wordOfTheDay(),
        spacer30,
        _newsAndArticles(context),
      ],
    );
  }

  Widget _newsAndArticles(BuildContext context) {
    return BlocBuilder<DrawerBloc, DrawerState>(
      builder: (context, state) {
        final data = state.newsBoardResponse.data?.last;
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.newsAndArticles,
                  style: _titleStyle(),
                ),
                GestureDetector(
                  onTap: () {
                    context.push(AppPages.newsBoardMainScreen);
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Text(
                    AppStrings.viewAll,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            spacer20,
            SizedBox(
              width: SizeUtility(context).width,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: HelperClasses.cachedNetworkImage(
                          imageUrl: data?.content ?? "",
                          height: SizeUtility(context).height / 5.5,
                          width: SizeUtility(context).width,
                        ),
                      ),
                      spacer15,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data?.newsTitle ?? '', style: _titleStyle()),
                            spacerWidth4,
                            Text(
                              data?.description ?? '',
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: AppColors.greyText,
                              ),
                              maxLines: 2,
                            ),
                            spacer20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(data?.newsDate ?? "", style: _lightText()),
                                Text('2 min read', style: _lightText()),
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.grey200),
                                    ),
                                    spacerWidth4,
                                    Text('General', style: _lightText()),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _wordOfTheDay() {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        final data = state.wordThoughtResponse?.data;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.wordOfTheDay,
              style: _titleStyle(),
            ),
            spacer10,
            SizedBox(
              height: SizeUtility(context).height / 3.3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: (data?.resTable1?.length ?? 0) +
                    (data?.resTable2?.length ?? 0),
                separatorBuilder: (context, index) => spacerWidth10,
                itemBuilder: (context, index) {
                  final isWord = data!.resTable1!.length > index;
                  int tempIndex = 0;
                  if (!isWord) {
                    tempIndex = (index - data.resTable1!.length).toInt();
                  }
                  return !isWord
                      ? wordImageWidget(
                          data.resTable2?[tempIndex].thoughtOfTheDayUrl ?? "",
                          tempIndex)
                      : data.resTable1?[index].wordImage == ""
                          ? wordOfTheDayCard(context, data, index)
                          : wordImageWidget(
                              data.resTable1?[index].wordImage ?? "",
                              tempIndex,
                            );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget wordOfTheDayCard(
      BuildContext context, WordThoughtsEntity data, int index) {
    return Card(
      // color: Colors.red,
      child: Container(
        // color: Colors.white,
        padding: const EdgeInsets.all(12),
        width: SizeUtility(context).width / 1.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            assetFromSvg(
              AppAssets.bulbIcon,
              color: AppColors.primaryColor,
            ),
            spacer10,
            Text(
              AppStrings.wordOfTheDay,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.grey600,
              ),
            ),
            spacer10,
            Container(
              height: 2,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  gradient: AppColors.primaryLinearGradient,
                  borderRadius: BorderRadius.circular(8)),
            ),
            spacer15,
            Text(
              data.resTable1?[index].wordName ?? "",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                height: 1.2,
                letterSpacing: 1.2,
              ),
            ),
            spacer15,
            Text(
              data.resTable1?[index].wordMeaning1 ?? "",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.grey700,
              ),
            ),
            spacer4,
            Text(
              data.resTable1?[index].wordMeaning1 ?? "",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: AppColors.grey700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget wordImageWidget(String img, int tempIndex) {
    return SizedBox(
      height: 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: Image.network(
          img,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  TextStyle _lightText() {
    return TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.greyText,
        fontWeight: FontWeight.bold);
  }

  TextStyle _titleStyle() {
    return const TextStyle(fontSize: 17, fontWeight: FontWeight.w600);
  }
}
