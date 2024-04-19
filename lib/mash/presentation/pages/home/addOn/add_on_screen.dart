

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/app_theme.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/add_on_card.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: AppThemes.mainTheme,
    debugShowCheckedModeBanner: false,
    home: const AddOnScreen(),
  ));
}

class AddOnScreen extends StatefulWidget {
   const AddOnScreen({super.key});

  @override
  State<AddOnScreen> createState() => _AddOnScreenState();
}

class _AddOnScreenState extends State<AddOnScreen> with SingleTickerProviderStateMixin {
   TabController? _tabController;


   @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
   }

  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Scaffold(
      drawer: DrawerWidget(),
      appBar:  AppBar(
        centerTitle: true,
        title: const Text(AppStrings.addOnScreenTItle),
        bottom: TabBar(
          indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0,color: Colors.purple),
          ),
          controller: _tabController,
          tabs: const  [
            Tab(text: AppStrings.tabBarTitleAcademic),
            Tab(text: AppStrings.tabBarTitleNonAcademic),
          ],
        ),
      ),
      body: addOnBody(),
    );
  }

  addOnBody() {
    return TabBarView(
      controller: _tabController,
      children:  [
        Center(
          child: ListView.separated(
            separatorBuilder: (context,index){
              return sizedBox(10.0);
            },
              itemCount: 5,
              itemBuilder: (context,index){
            return AddOnCard(
              cardImage: 'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',onPress: ()=> GoRouter.of(context).pushNamed(AppPages.addonDetailScreen),);
          }),
        ),
        Center(
          child: ListView.separated(
              separatorBuilder: (context,index){
                return sizedBox(10.0);
              },
              itemCount: 5,
              itemBuilder: (context,index){
            return AddOnCard(cardImage: 'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',onPress: ()=> GoRouter.of(context).pushNamed(AppPages.addonDetailScreen),);
          }),
        ),
      ],
    );
  }



  sizedBox(height){
     return SizedBox(height: height,);
  }
}
