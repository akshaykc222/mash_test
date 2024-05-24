import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/home_work_field.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_bottom_sheet.dart';

import '../../../../widgets/common_appbar.dart';
import '../../../../widgets/side_drawer.dart';

class HomeWorkSelectDetailsWidget extends StatelessWidget {
  const HomeWorkSelectDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: commonAppbar(title: AppStrings.selectDetails),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHomeWorkField(
            name: AppStrings.chooseSubject,
            onTap: () {
              _showBottomSheet(context);
            },
          ),
          spacer10,
          Row(
            children: [
              Expanded(
                child: CustomHomeWorkField(
                  name: AppStrings.fromDate,
                  onTap: () {
                    showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 5)),
                    );
                  },
                ),
              ),
              spacerWidth10,
              Expanded(
                child: CustomHomeWorkField(
                  name: AppStrings.toDate,
                  onTap: () {},
                ),
              ),
            ],
          ),
          spacer20,
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.black,
              ),
              onPressed: () {
                context.pushNamed(AppPages.homeWorksViewScreen);
              },
              child: const Text('View'),
            ),
          )
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context) async {
    return commonBottomSheet(
      context,
      title: AppStrings.chooseSubject,
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            'Subjects',
            style: TextStyle(
              fontSize: SizeConfig.textSize(16),
              height: 1.2,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 16,
              color: AppColors.blackOverlay,
            ),
          ),
        ),
      ),
    );
  }
}
