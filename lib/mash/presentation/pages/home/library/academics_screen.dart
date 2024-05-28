import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/drawer_widget.dart';

class AcademicsScreen extends StatefulWidget {
  const AcademicsScreen({super.key});

  @override
  State<AcademicsScreen> createState() => _AcademicsScreenState();
}

class _AcademicsScreenState extends State<AcademicsScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: commonAppbar(title: 'ACADEMICS'),
      body: academicsBody(context),
    );
  }

  academicsBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [selectClassTitle(), dropDown(), detailList()],
      ),
    );
  }

  selectClassTitle() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 15.0,
        bottom: 5,
      ),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Select Class',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          )),
    );
  }

  dropDown() {
    List classes = [
      'Pre-KG',
      'LKG',
      'UKG',
      'I',
      'II',
      'III',
      'IV',
      'V',
      'VI',
      'VII',
      'VIII',
      'IX',
      'X',
      'XI'
    ];
    // List<Widget> buttons = List.generate(classes.length, (index) => buttons(index,classes[index],classes));
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 8.0, top: 8),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: classes.length,
            itemBuilder: (context, index) {
              return buttons(index, classes[index], classes);
            }),
      ),
    );
  }

  buttons(int index, title, List classes) {
    // List<Color> buttonColors = List.generate(classes.length, (index) => Colors.blue);
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            // Toggle button color
            selectedIndex == index ? selectedIndex = -1 : selectedIndex = index;
          });
        },
        style: ElevatedButton.styleFrom(
          side: const BorderSide(width: 1, color: Colors.purple),
          backgroundColor: index == selectedIndex
              ? Colors.purple
              : Colors.white, // Set button color dynamically
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: index == selectedIndex ? Colors.white : Colors.purple),
        ),
      ),
    );
  }

  detailList() {
    return Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return spacer10;
          },
          itemCount: 7,
          itemBuilder: (context, index) {
            return const AcademicCardItem();
          }),
    );
  }
}

class AcademicCardItem extends StatelessWidget {
  const AcademicCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 9,
              offset: const Offset(0, 0),
            )
          ]),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8, top: 20, bottom: 20),
        child: ListTile(
          onTap: () => GoRouter.of(context)
              .pushNamed(AppPages.academicDetailLibraryScreen),
          leading: CachedNetworkImage(
            imageUrl:
                "https://d3nn873nee648n.cloudfront.net/HomeImages/Concept-and-Ideas.jpg?w=248&fit=crop&auto=format",
            fit: BoxFit.cover,
            height: 50,
            width: 50,
            placeholder: (BuildContext context, String url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (BuildContext context, String url, dynamic error) =>
                const Icon(Icons.error),
          ),
          title: const Text(
            'library books',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
    // return Container(
    //   margin: const EdgeInsets.only(right: 10,left: 10),
    //   // width: size.width,
    //   height: 50,
    //   decoration: BoxDecoration(
    //       color: Colors.white,
    //       borderRadius: BorderRadius.circular(10),
    //       boxShadow: [
    //         BoxShadow(
    //           color: Colors.grey.withOpacity(0.3),
    //           spreadRadius: 1,
    //           blurRadius: 9,
    //           offset: const Offset(0, 0),
    //         )
    //       ]
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.only(left: 8.0,right: 8,top: 20,bottom: 20),
    //     child: ListTile(
    //       leading: CachedNetworkImage(
    //         imageUrl: "https://png.pngtree.com/png-vector/20190330/ourmid/pngtree-vector-picture-icon-png-image_890152.jpg",
    //         fit: BoxFit.cover,
    //         // height: size.height* 0.22,
    //         // width: size.width,
    //         placeholder: (BuildContext context, String url) => const Center(child: CircularProgressIndicator(),),
    //         errorWidget: (BuildContext context, String url, dynamic error) => const Icon(Icons.error),
    //       ),
    //       title: Text('library books',style: TextStyle(fontWeight: FontWeight.w600),),
    //     ),
    //   ),
    // );
  }
}
