import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      endDrawer: DrawerWidget(),
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
          _fieldWidget(
            context,
            name: AppStrings.chooseSubject,
            onTap: () {
              _showBottomSheet(context);
            },
          ),
          spacer10,
          Row(
            children: [
              Expanded(
                child: _fieldWidget(
                  context,
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
                child: _fieldWidget(
                  context,
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
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 10,
        ).copyWith(bottom: 30),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.white),
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
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
      ),
    );
  }

  Widget _fieldWidget(BuildContext context,
      {required String name, required VoidCallback onTap}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: SizeConfig.textSize(16),
            fontWeight: FontWeight.bold,
          ),
        ),
        spacer10,
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.centerRight,
            height: SizeConfig.height(45),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.grey200,
              ),
              borderRadius: BorderRadius.circular(9),
              color: AppColors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: AppColors.grey200,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.blackOverlay,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
