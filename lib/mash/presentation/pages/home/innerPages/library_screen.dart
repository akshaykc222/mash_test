
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    List titleList = ['ACADEMIC','NON ACADEMIC', 'R','RESEARCH'];
      return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context,index){
          return libraryCard((){},titleList[index],list[index]);
        }),
      );
  }

  libraryCard(onPress,title,assetName) {
    return InkWell(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),],
          ),
          child:  Column(
            children: [
              SvgPicture.asset(assetName),
              Text(title)
            ],
          ),
        ));
  }
}
