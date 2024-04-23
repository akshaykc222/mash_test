import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class HomeWorkScreen extends StatelessWidget {
  const HomeWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: commonAppbar(title: 'HOMEWORK/NOTES'),
      body: homeWorkBody(),
    );
  }

  homeWorkBody() {
    List titleList = ['HOMEWORK', 'NOTES'];
    List assetList = [
      AppAssets.libImageAcademic,
      AppAssets.libImageNonAcademic
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return homeWorkCard(() {
              GoRouter.of(context).pushNamed(AppPages.homeWorkDetailsScreen);
            }, assetList[index], titleList[index], context);
          }),
    );
  }

  homeWorkCard(onPress, assetName, title, context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
          onTap: onPress,
          child: Container(
            height: SizeUtility(context).height / 4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(assetName),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.all(15.0), child: Text(title)),
                )
              ],
            ),
          )),
    );
  }
}
