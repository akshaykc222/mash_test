import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: Platform.isIOS ? 40 : 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    context.pop();
                  },
                ),
              ],
            ),
          ),
          BlocBuilder<DrawerBloc, DrawerState>(
            builder: (context, state) {
              final data = state.roleMenuResponse.data ?? [];

              return Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8.0),
                  itemCount: data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 1.2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        if (data[index].menuName.toLowerCase() == 'logout') {
                          prettyPrint(data[index].menuName.toLowerCase());

                          BlocProvider.of<AuthBloc>(context)
                              .add(AuthEvent.signOut(context: context));
                          BlocProvider.of<ProfileBloc>(context)
                              .add(const ProfileEvent.disposeEvent());
                          GoRouter.of(context).goNamed(AppPages.login);
                        } else {
                          context.pop();
                          try {
                            prettyPrint(
                                '/${data[index].menuName.toLowerCase().replaceAll(' ', '_')}');

                            GoRouter.of(context).pushNamed(
                                "/${data[index].menuName.toLowerCase().replaceAll(' ', '_')}");
                          } catch (e) {
                            GoRouter.of(context).pushNamed(AppPages.comingSoon);
                          }
                        }
                      },
                      child: Column(
                        children: [
                          Card(
                            shape: const CircleBorder(),
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CachedNetworkImage(
                                imageUrl: data[index].icon,
                                height: 35,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            data[index].menuName,
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
