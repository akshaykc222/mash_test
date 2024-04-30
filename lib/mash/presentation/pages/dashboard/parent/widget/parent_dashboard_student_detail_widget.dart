import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

import '../../../../router/app_pages.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/enums.dart';
import '../../../../utils/size_utility.dart';
import '../../../home/widgets/progress_indicator_widget.dart';

class ParentDashboardStudentDetailWidget extends StatelessWidget {
  const ParentDashboardStudentDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spacer30,
        _buildInfoRow(),
        spacer7,
        _buildDivider(context),
        spacer10,
        _buildContactRow(context),
        spacer10,
        _buildProgressWidgets(context),
        spacer50,
      ],
    );
  }

  Widget _buildInfoRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoItem('Class Teacher', 'Rajani Rajan'),
          _buildInfoItem('Roll No', '0394', isEnd: true),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String title, String value, {bool isEnd = false}) {
    return Column(
      crossAxisAlignment:
          isEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 1,
          width: SizeUtility(context).width * 0.28,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
          ),
        ),
        Container(
          height: 1,
          width: SizeUtility(context).width * 0.28,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
          ),
        )
      ],
    );
  }

  Widget _buildContactRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Icon(Icons.call_outlined),
          const SizedBox(width: 20),
          const Icon(Icons.chat_bubble_outline),
          const Spacer(),
          _buildInfoItem('Class', 'LKG A', isEnd: true)
        ],
      ),
    );
  }

  Widget _buildProgressWidgets(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      verticalDirection: VerticalDirection.down,
      children: [
        _buildAttendanceWidget(context),
        _buildGradeWidget(),
      ],
    );
  }

  Widget _buildAttendanceWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushNamed(AppPages.attendanceDetailScreen);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 9,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Container(
          height: 170,
          width: 170,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.greyClr200,
            border: Border.all(
              color: AppColors.white,
              width: 2,
            ),
          ),
          child: const Stack(
            children: [
              SizedBox(
                height: 170,
                width: 170,
                child: ProgressIndicatorWidget(
                  progressIndicatorType: ProgressIndicatorType.circular,
                  initialValue: 0.8,
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'ATTENDENCE',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '75%',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View Details',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGradeWidget() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 9,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Container(
        height: 91,
        width: 91,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        child: const Center(
          child: Text(
            'A',
            style: TextStyle(
              fontSize: 40,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}