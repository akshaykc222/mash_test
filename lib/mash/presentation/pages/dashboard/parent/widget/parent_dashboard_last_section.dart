import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/subject_perfomance_widget.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';
import 'package:mash/mash/presentation/widgets/common_bottom_sheet.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_strings.dart';

class ParentDashboardLastSection extends StatefulWidget {
  const ParentDashboardLastSection({super.key});

  @override
  ParentDashboardLastSectionState createState() =>
      ParentDashboardLastSectionState();
}

class ParentDashboardLastSectionStatetransporta
    extends State<ParentDashboardLastSection> {
  late final ValueNotifier<String> performanceValue;

  @override
  void initState() {
    performanceValue =
        ValueNotifier<String>(AppStrings.dashboardPerformanceList.first);

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
        ],
      ),
    );
  }

  Widget _buildPerformanceSelectWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppStrings.performance, style: _titleStyle()),
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

  TextStyle _titleStyle() {
    return const TextStyle(fontSize: 17, fontWeight: FontWeight.w600);
  }
}
