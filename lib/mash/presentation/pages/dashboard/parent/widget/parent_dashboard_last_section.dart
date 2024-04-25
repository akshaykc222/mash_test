import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/subject_perfomance_widget.dart';
import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';
import 'package:mash/mash/presentation/widgets/common_bottom_sheet.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/size_utility.dart';

final ValueNotifier<String> performanceValue =
    ValueNotifier<String>(AppStrings.dashboardPerfomanceList.first);

class ParentDashboardLastSection extends StatelessWidget {
  const ParentDashboardLastSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spacer30,
          _buildPerformanceSelectWidget(context),
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
          _newsAndArticles(context),
        ],
      ),
    );
  }

  Widget _newsAndArticles(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.newsAndArticles,
              style: _titleStyle(),
            ),
            Text(
              AppStrings.viewAll,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              ),
            )
          ],
        ),
        spacer20,
        SizedBox(
          // height: SizeUtility(context).height / 2.5,

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
                        Text(
                          'Mathematic Lab',
                          style: _titleStyle(),
                        ),
                        spacer4,
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
                            Text(
                              '19/03/2024',
                              style: _lightText(),
                            ),
                            Text(
                              '2 min read',
                              style: _lightText(),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.grey200,
                                  ),
                                ),
                                spacerWidth4,
                                Text(
                                  'General',
                                  style: _lightText(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  TextStyle _lightText() {
    return TextStyle(
      overflow: TextOverflow.ellipsis,
      color: AppColors.greyText,
      fontWeight: FontWeight.bold,
    );
  }

  Widget _wordOfTheDay() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.wordOfTheDay,
          style: _titleStyle(),
        ),
      ],
    );
  }

  Widget _buildPerformanceSelectWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.perfomance,
          style: _titleStyle(),
        ),
        const Spacer(),
        TextButton(
          onPressed: () => _showPerformanceSelection(context),
          child: ValueListenableBuilder(
            valueListenable: performanceValue,
            builder: (context, value, _) {
              return Row(
                children: [
                  Text(
                    performanceValue.value,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  spacerWidth4,
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  void _showPerformanceSelection(BuildContext context) {
    commonBottomSheet(
      context,
      title: '',
      child: _buildPerformanceSelection(context),
      height: 0.4,
    );
  }

  Widget _buildPerformanceSelection(BuildContext context) {
    return Column(
      children: [
        ...AppStrings.dashboardPerfomanceList.map((performance) {
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
        }),
      ],
    );
  }

  TextStyle _titleStyle() {
    return const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
    );
  }
}
