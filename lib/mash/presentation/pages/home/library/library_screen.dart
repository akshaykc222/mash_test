
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/router/router_config.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class LibraryScreen extends StatelessWidget {
   const LibraryScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: commonAppbar(title: 'LIBRARY'),
      body: libraryBody(),
    );
  }

  libraryBody() {
    List list =[AppAssets.libImageAcademic,AppAssets.libImageNonAcademic,AppAssets.libImageResearch,AppAssets.libImageUserActivity];
    List titleList = ['ACADEMIC','NON ACADEMIC','RESEARCH', 'USER ACTIVITY'];
    List routes = [AppPages.academicLibraryScreen,];
      return Padding(
        padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context,index){
          return libraryCard(()=> GoRouter.of(context).pushNamed(routes[0]),titleList[index],list[index]);
        }),
      );
  }

  libraryCard(onPress,title,assetName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
          onTap: onPress,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  [BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 5.0,
              ),],
            ),
            child:  Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset(assetName),
                ),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(title))
              ],
            ),
          )),
    );
  }
}
