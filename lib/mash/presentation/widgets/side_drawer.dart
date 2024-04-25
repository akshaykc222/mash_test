

import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

class DrawerWidget extends StatelessWidget {
  final List<DrawerItem> drawerItems = [
    DrawerItem(icon: Icons.home, name: 'Home'),
    DrawerItem(icon: Icons.settings, name: 'Settings'),
    DrawerItem(icon: Icons.notifications, name: 'Notifications'),
    DrawerItem(icon: Icons.person, name: 'Profile'),DrawerItem(icon: Icons.home, name: 'Home'),
    DrawerItem(icon: Icons.settings, name: 'Settings'),
    DrawerItem(icon: Icons.notifications, name: 'Notifications'),
    DrawerItem(icon: Icons.person, name: 'Profile'),DrawerItem(icon: Icons.home, name: 'Home'),
    DrawerItem(icon: Icons.settings, name: 'Settings'),
    DrawerItem(icon: Icons.notifications, name: 'Notifications'),
    DrawerItem(icon: Icons.person, name: 'Profile'),DrawerItem(icon: Icons.home, name: 'Home'),
    DrawerItem(icon: Icons.settings, name: 'Settings'),
    DrawerItem(icon: Icons.notifications, name: 'Notifications'),
    DrawerItem(icon: Icons.person, name: 'Profile'),DrawerItem(icon: Icons.home, name: 'Home'),
    DrawerItem(icon: Icons.settings, name: 'Settings'),
    DrawerItem(icon: Icons.notifications, name: 'Notifications'),
    DrawerItem(icon: Icons.person, name: 'Profile'),
  ];

   DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Drawer(
      // backgroundColor: Colors.white,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: AppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false, // Remove default back button
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.close,size: 35,),
                  onPressed: () {
                    Navigator.pop(context); // Close drawer
                  },
                ),
                spacerWidth20
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: drawerItems.length,
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
                      // Handle item tap
                      Navigator.pop(context); // Close drawer
                      // You can add navigation logic here
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(drawerItems[index].icon,color: Colors.purple,),
                        spacer10,
                        Text(drawerItems[index].name,style: const TextStyle(color: Colors.purple),),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem {
  final IconData icon;
  final String name;

  DrawerItem({required this.icon, required this.name});
}