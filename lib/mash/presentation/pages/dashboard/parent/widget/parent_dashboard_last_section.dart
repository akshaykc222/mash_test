import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/subject_perfomance_widget.dart';
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
    return Column(
      children: [
        spacer30,
        _buildPerformanceSelectWidget(context),
        spacer30,
        const SubjectPerfomanceWidget(),
      ],
    );
  }

  Widget _buildPerformanceSelectWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            AppStrings.perfomance,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () => _showPerformanceSelection(context),
            child: ValueListenableBuilder(
              valueListenable: performanceValue,
              builder: (context, value, _) {
                return Text(
                  performanceValue.value,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showPerformanceSelection(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => _buildPerformanceSelection(context),
    );
  }

  Widget _buildPerformanceSelection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: SizeUtility(context).height / 3,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                color: AppColors.greyBg,
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios, size: 16),
              ),
              const Text(
                'Select',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              IconButton(
                color: AppColors.greyBg,
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close, size: 14),
              ),
            ],
          ),
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
      ),
    );
  }
}
