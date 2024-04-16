import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

import '../../../../core/pretty_printer.dart';
import '../../manager/cubit/bottom_navigation_cubit.dart';
import '../../utils/enums.dart';

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({super.key});

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
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
              color: AppColors.grey200,
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, -1),
            )
          ]),
          child: BlocConsumer<BottomNavigationCubit, BottomNavigationState>(
            listener: (context, state) {},
            builder: (context, state) {
              prettyPrint("rebuilding");
              return Row(
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
                                // cubit.changeBottomNav(menu.index);
                                // GoRouter.of(context).go(AppRouteManager.home(
                                //     CustomBottomNavigationItems
                                //         .values[menu.index]));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // SvgPicture.asset(
                                  //   // getHomeIcon(menu),
                                  //   color: cubit.currentIndex != menu.index
                                  //       ? Colors.grey
                                  //       : AppColors.primaryColor,
                                  //   width: 30,
                                  //   height: 30,
                                  // ),
                                  // const SizedBox(
                                  //   height: 3,
                                  // ),
                                  // Text(
                                  //   "${menu.name[0].toUpperCase()}${menu.name.substring(1)}",
                                  //   style: TextStyle(
                                  //     fontSize: 12,
                                  //     color: cubit.currentIndex != menu.index
                                  //         ? Colors.grey
                                  //         : Colors.blue.withOpacity(0.7),
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList());
            },
          ),
        ),
      ],
    );
  }
}
