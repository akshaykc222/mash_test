import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  void initState() {
    BlocProvider.of<DrawerBloc>(context)
        .add(const DrawerEvent.getRoleMenuEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Drawer(
      width: size.width,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: AppBar(
              backgroundColor: AppColors.transparent,
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 35,
                  ),
                  onPressed: () {
                    context.pop();
                  },
                ),
                spacerWidth20
              ],
            ),
          ),
          BlocBuilder<DrawerBloc, DrawerState>(
            builder: (context, state) {
              final data = state.roleMenuResponse.data ?? [];

              return Expanded(
                flex: 7,
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 1.5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 3,
                      child: InkWell(
                        onTap: () {
                          // You might want to replace `context.pop()` with `Navigator.pop(context)`
                          Navigator.pop(context);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CachedNetworkImage(
                              imageUrl: data[index].icon,
                              height: 35,
                            ),
                            spacer10,
                            Text(
                              data[index].menuName,
                              style: const TextStyle(color: Colors.purple),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
