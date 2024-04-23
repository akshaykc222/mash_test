// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
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
                isDismissible: true,
                isScrollControlled: true,
                context: context,
                backgroundColor: AppColors.transparent,
                builder: (context) {
                  return SingleChildScrollView(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 247, 232, 250),
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20),
                            right: Radius.circular(20),
                          )),
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.85,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 50,
                                child: Stack(
                                  children: [
                                    const Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          AppStrings.chooseSubject,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: GestureDetector(
                                        onTap: () => Navigator.pop(context),
                                        child: Container(
                                          height: 45,
                                          width: 45,
                                          padding: const EdgeInsets.all(8.0),
                                          child: Card(
                                            child: Icon(
                                              Icons.close,
                                              size: 14,
                                              color: AppColors.grey200,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 10),
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
                              ),
                            ],
                          ),
                        ),
                      ),
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
