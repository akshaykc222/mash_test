import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/subject_perfomance_widget.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';
import 'package:mash/mash/presentation/widgets/common_bottom_sheet.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';

import '../../../../../data/remote/models/request/academic_comp_id_request.dart';
import '../../../../manager/dashboard_bloc/dashboard_bloc.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/size_utility.dart';

class ParentDashboardLastSection extends StatefulWidget {
  const ParentDashboardLastSection({super.key});

  @override
  _ParentDashboardLastSectionState createState() =>
      _ParentDashboardLastSectionState();
}

class _ParentDashboardLastSectionState
    extends State<ParentDashboardLastSection> {
  late final ValueNotifier<String> performanceValue;

  @override
  void initState() {
    performanceValue =
        ValueNotifier<String>(AppStrings.dashboardPerformanceList.first);
    BlocProvider.of<DashboardBloc>(context).add(
      DashboardEvent.fetchWordAndThoughtOftheDayEvent(
        WordThoughtRequest(pAcademicId: '87', pCompID: '200001'),
        context,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spacer30,
          _buildPerformanceSelectWidget(),
          spacer30,
          const SubjectPerfomanceWidget(),
          spacer40,
          Align(
            alignment: Alignment.center,
            child: CustomIconButton(
              name: 'View Dashboard',
              onTap: () {},
            ),
          ),
          spacer40,
          _wordOfTheDay(),
          spacer30,
          _newsAndArticles(),
        ],
      ),
    );
  }

  Widget _newsAndArticles() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStrings.newsAndArticles, style: _titleStyle()),
            Text(
              AppStrings.viewAll,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
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
                    child: Image.asset(
                      'assets/images/student_dummy.png',
                      height: SizeUtility(context).height / 5.5,
                      width: SizeUtility(context).width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  spacer15,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mathematic Lab', style: _titleStyle()),
                        const SizedBox(height: 4),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor',
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
                            Text('19/03/2024', style: _lightText()),
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
              height: SizeUtility(context).height / 3.5,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: (data?.thoughtTable.length ?? 0) +
                    (data?.wordTable.length ?? 0),
                separatorBuilder: (context, index) => spacerWidth10,
                itemBuilder: (context, index) {
                  final isWord = data!.wordTable.length > index;
                  int tempIndex = 0;
                  if (!isWord) {
                    tempIndex = index - data.wordTable.length;
                  }
                  return !isWord
                      ? wordImageWidget(
                          data.thoughtTable[tempIndex].thoughtOfTheDayUrl ?? "",
                          tempIndex)
                      : data.wordTable[index].wordImage == null
                          ? wordOfTheDayCard(context, data, index)
                          : wordImageWidget(
                              data.wordTable[index].wordImage ?? "",
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
              data.wordTable[index].wordName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.2,
                letterSpacing: 1.2,
              ),
            ),
            spacer15,
            Text(
              data.wordTable[index].wordMeaning1,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: AppColors.grey700,
              ),
            ),
            spacer4,
            Text(
              data.wordTable[index].wordMeaning2,
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
      child: Image.network(
        img,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildPerformanceSelectWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppStrings.perfomance, style: _titleStyle()),
        const Spacer(),
        TextButton(
          onPressed: () => _showPerformanceSelection(),
          child: ValueListenableBuilder(
            valueListenable: performanceValue,
            builder: (context, value, _) {
              return Row(
                children: [
                  Text(
                    performanceValue.value,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.arrow_forward_ios, size: 12),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  void _showPerformanceSelection() {
    commonBottomSheet(
      context,
      title: AppStrings.select,
      child: _buildPerformanceSelection(),
      height: 0.4,
    );
  }

  Widget _buildPerformanceSelection() {
    return Column(
      children: AppStrings.dashboardPerformanceList.map((performance) {
        final isSelected = performance == performanceValue.value;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              performance,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: isSelected ? Colors.deepPurple : AppColors.black,
              ),
            ),
            Radio(
              value: true,
              groupValue: isSelected,
              onChanged: (value) {
                performanceValue.value = performance;
              },
            ),
          ],
        );
      }).toList(),
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
