import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';

// import '../../manager/cubit/bottom_navigation_cubit.dart';
import '../../router/router_config.dart';
import '../../utils/enums.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: 77,
            decoration: BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 9,
                offset: const Offset(0, 0),
              )
            ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: CustomBottomNavigationItems.values
                    .map(
                      (menu) => Expanded(
                        child: Material(
                          color: Colors.transparent,
                          child: InkResponse(
                            splashFactory: InkRipple.splashFactory,
                            radius: 30,
                            splashColor: Colors.black12,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              GoRouter.of(context).go(AppRouteManager.home(
                                  CustomBottomNavigationItems
                                      .values[menu.index]));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                assetFromSvg(
                                  getHomeIcon(menu),
                                  color: AppColors.primaryColor,
                                  width: 25,
                                  height: 25,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList())),
      ],
    );
  }
}

String getHomeIcon(CustomBottomNavigationItems menu) {
  switch (menu) {
    case CustomBottomNavigationItems.home:
      return AppAssets.homeTabIcon;
    case CustomBottomNavigationItems.timetable:
      return AppAssets.timeTableIcon;
    case CustomBottomNavigationItems.library:
      return AppAssets.libraryTabIcon;
    case CustomBottomNavigationItems.addOn:
      return AppAssets.addOnsTabIcon;
    case CustomBottomNavigationItems.homework:
      return AppAssets.homeWorkTabIcon;

    default:
      return AppAssets.homeTabIcon;
  }
}
