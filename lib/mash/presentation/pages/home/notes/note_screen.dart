import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';

import '../../../router/app_pages.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_strings.dart';
import '../../../utils/helper_classes.dart';
import '../homeWork/widgets/home_work_field.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.selectDetails),
      body: _body(context),
      floatingActionButton: FloatingActionButton(
        elevation: 3,
        shape: const CircleBorder(),
        child: assetFromSvg(
          AppAssets.addNote,
          color: AppColors.black,
        ),
        onPressed: () {
          context.pushNamed(AppPages.noteAddTeacherScreen);
        },
      ),
    );
  }

  _body(BuildContext context) {
    return Column(
      children: [
        HelperClasses.getSelectedStudent(context),
        spacer20,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomHomeWorkField(
                name: AppStrings.chooseSubject,
                onTap: () {},
              ),
              spacer20,
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
        ),
      ],
    );
  }
}
