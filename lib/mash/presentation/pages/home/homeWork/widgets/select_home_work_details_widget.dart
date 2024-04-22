// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import '../../../../widgets/common_appbar.dart';
import '../../../../widgets/side_drawer.dart';

class HomeWorkSelectDetailsWidget extends StatelessWidget {
  const HomeWorkSelectDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerWidget(),
      appBar: commonAppbar(title: AppStrings.selectDetails),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.chooseSubject,
            style: TextStyle(
              fontSize: SizeConfig.textSize(16),
              fontWeight: FontWeight.bold,
            ),
          ),
          spacer10,
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Container(
                    height: SizeUtility(context).height / 1.1,
                    width: double.infinity,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text(AppStrings.chooseSubject)),
                            Expanded(
                              flex: 1078,
                              child: Icon(Icons.close),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
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
                    AppStrings.chooseSubject,
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
          )
        ],
      ),
    );
  }
}
