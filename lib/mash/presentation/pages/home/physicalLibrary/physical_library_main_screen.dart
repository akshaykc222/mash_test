import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/home/physicalLibrary/widgets/books_detail_card.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

import '../../../widgets/drawer_widget.dart';

class PhysicalLibraryMainScreen extends StatelessWidget {
  const PhysicalLibraryMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.physicalLibrary),
      endDrawer: DrawerWidget(),
      body: const PhysicalLibraryBody(),
    );
  }
}

class PhysicalLibraryBody extends StatelessWidget {
  const PhysicalLibraryBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Container(
            height: SizeConfig.height(100),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.purpleLight,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  blurRadius: 5.0,
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CommonTextField(
                      suffix: const Icon(Icons.search),
                      title: 'Search Book',
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15)),
                              color: AppColors.primaryColor),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.filter_alt_sharp,
                                  size: 15,
                                  color: AppColors.white,
                                ),
                                spacerWidth4,
                                Text(
                                  'Filter',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        color: AppColors.grey700,
                        width: 2,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(15)),
                              color: AppColors.primaryColor),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 15,
                                  color: AppColors.white,
                                ),
                                spacerWidth4,
                                Text(
                                  'Search',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return BookDetailCard();
                }),
          )
        ],
      ),
    );
  }
}
