import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile/profile_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../../../domain/entities/home_work/home_work_entity.dart';

class HomeWorkViewDetailsScreen extends StatelessWidget {
  final HomeWorkReportsEntity entity;

  const HomeWorkViewDetailsScreen({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final user = context.read<ProfileBloc>().state.getUserDetail?.data;

    return Scaffold(
      appBar: commonAppbar(title: AppStrings.details),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDetailRow(
                  context,
                  label: 'Subject',
                  value: entity.description ?? "",
                ),
                _buildDetailRow(
                  isEnd: true,
                  context,
                  label: 'Submission Date',
                  value: entity.submitDate ?? '',
                ),
              ],
            ),
            spacer20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDetailRow(
                  context,
                  label: 'Class',
                  value: '${user?.className} ${user?.divisionName}',
                ),
                _buildDetailRow(
                  isEnd: true,
                  context,
                  label: 'Type',
                  value: entity.workType ?? "",
                ),
              ],
            ),
            spacer30,
            Text(
              AppStrings.homeWorkDetails,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
            spacer20,
            Container(
              width: double.infinity,
              height: SizeUtility(context).height / 3,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Test please ignore',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(BuildContext context,
      {required String label, required String value, bool isEnd = false}) {
    return Column(
      crossAxisAlignment:
          isEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: AppColors.grey600,
            height: 1.5,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
