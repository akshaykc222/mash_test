import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class ProgressReport extends StatefulWidget {
  const ProgressReport({super.key});

  @override
  State<ProgressReport> createState() => _ProgressReportState();
}

class _ProgressReportState extends State<ProgressReport> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerWidget(),
      appBar: commonAppbar(title: 'PROGRESS REPORT'),
      body: progressReportBody(context),
    );
  }

  progressReportBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _academicYearField(),
          _academicYearButton('2023-2024'),
          _selectTermTitle(),
          _termsField(),
          spacer20,
          _downloadButton(() {}, 'DOWNLOAD REPORT'),
          spacer20,
          _reportList()
        ],
      ),
    );
  }

  _academicYearField() {
    return const Expanded(
      flex: 1,
      child: Text('Academic Year',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
    );
  }

  _selectTermTitle() {
    return Expanded(
      flex: 1,
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Select Term',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          )),
    );
  }

  _termsField() {
    List classes = ['First Term', 'Mid Term', 'Final Term'];
    // List<Widget> buttons = List.generate(classes.length, (index) => buttons(index,classes[index],classes));
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
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
              fontWeight: FontWeight.w500,
              color: index == selectedIndex ? Colors.white : Colors.purple),
        ),
      ),
    );
  }

  _academicYearButton(title) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            side: const BorderSide(width: 1, color: Colors.purple),
            backgroundColor: Colors.purple, // Set button color dynamically
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
    );
  }

  _downloadButton(onTap, name) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            fixedSize: Size(SizeUtility(context).width * 0.7, 45),
            elevation: 2,
            backgroundColor: Colors.purple,
          ),
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.cloud_download_rounded,
                color: Colors.white,
              ),
              spacerWidth10,
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // return CustomIconButton(name: 'DOWNLOAD REPORT',onTap: (){},icon: Icon(Icons.cloud_download_rounded),)
  }

  _reportList() {
    return Expanded(
      flex: 10,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return reportCard();
          },
          separatorBuilder: (context, index) {
            return spacer10;
          },
          itemCount: 2),
    );
  }

  reportCard() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subjectTitle('COMPUTER'),
                  dataRow('Test Paper', '10/10'),
                  dataRow('Test Paper', '10/10'),
                  dataRow('Test Paper', '10/10'),
                  dataRow('Test Paper', '10/10')
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: const Offset(0, 0),
                            )
                          ],
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '100',
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'TOTAL',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      )),
                  spacer10,
                  const Expanded(
                    child: Text('Marks out of 100',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  subjectTitle(title) {
    return Expanded(
        flex: 1,
        child: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ));
  }

  dataRow(itemName, itemMark) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(itemName + ' -'), Text(itemMark)],
      ),
    );
  }
}
