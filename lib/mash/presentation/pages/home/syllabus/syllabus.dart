import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class SyllabusScreen extends StatefulWidget {
  const SyllabusScreen({super.key});

  @override
  State<SyllabusScreen> createState() => _SyllabusScreenState();
}

class _SyllabusScreenState extends State<SyllabusScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'SYLLABUS'),
      endDrawer: DrawerWidget(),
      body: syllabusBody(),
    );
  }

  syllabusBody() {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [_selectTermTitle(), spacer10,_termsField(), _syllabusList()],
      ),
    );
  }

  _selectTermTitle() {
    return const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Select Term',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ));
  }

  _termsField() {
    List classes = ['First Term', 'Mid Term', 'Final Term'];
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: classes.length,
          itemBuilder: (context, index) {
            return buttons(index, classes[index], classes);
          }),
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
              fontWeight: FontWeight.w500,
              color: index == selectedIndex ? Colors.white : Colors.purple),
        ),
      ),
    );
  }

  _syllabusList() {
    List itemList = [
      ['names', 'demos', 'demo items names'],
      ['names', 'demos',],
      ['names', 'demos', 'demo items names','name list'],
      ['names', 'demos', 'demo items names'],
    ];
    List<String> subNameList = ['Malayalam', 'Hindi','English','Physics'];
    return Expanded(
      flex: 1,
      child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return spacer10;
          },
          itemCount: subNameList.length,
          itemBuilder: (context, index) {
            // return Container(height: 10,color: Colors.red,width: 200,);
            return syllabusCard(
                itemList[index].length, subNameList[index], itemList[index]);
          }),
    );
  }

  syllabusCard(int itemCount, subName, items) {
    return SizedBox(
      height: itemCount * 50 + 50,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(subName,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 9,
                    offset: const Offset(0, 0),
                  )
                ]),
            height: itemCount * 50,
            child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding:const EdgeInsets.only(left: 15),
                      height: 50,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(items[index]),
                      ));
                },
                separatorBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                      height: 2,
                       color: Colors.purple,
                    ),
                  );
                },
                itemCount: itemCount),
          )
        ],
      ),
    );
  }
}
