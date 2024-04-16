

import 'package:flutter/material.dart';
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
    // TODO: implement initState
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
        title: const Text('ADD ONS'),
        bottom: TabBar(
          indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0,color: Colors.purple),
          ),
          controller: _tabController,
          tabs: const  [
            Tab(text: 'ACADEMICS'),
            Tab(text: 'NON-ACADEMICS'),
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
            return AddOnCard(cardImage: 'https://images.pexels.com/photos/949587/pexels-photo-949587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',onPress: (){},);
          }),
        ),
        Center(
          child: ListView.separated(
              separatorBuilder: (context,index){
                return sizedBox(10.0);
              },
              itemCount: 5,
              itemBuilder: (context,index){
            return AddOnCard(cardImage: 'https://images.pexels.com/photos/949587/pexels-photo-949587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',onPress: (){},);
          }),
        ),
      ],
    );
  }



  sizedBox(height){
     return SizedBox(height: height,);
  }
}
