import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_gesture_detector.dart';

import '../../../widgets/drawer_widget.dart';

class ExamTimeTableScreen extends StatefulWidget {
  const ExamTimeTableScreen({super.key});

  @override
  State<ExamTimeTableScreen> createState() => _ExamTimeTableScreenState();
}

class _ExamTimeTableScreenState extends State<ExamTimeTableScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.examTimeTable),
      endDrawer: const DrawerWidget(),
      body: const SyllabusBody(),
    );
  }
}

class SyllabusBody extends StatefulWidget {
  const SyllabusBody({super.key});

  @override
  State<SyllabusBody> createState() => _SyllabusBodyState();
}

class _SyllabusBodyState extends State<SyllabusBody> {
  final TextEditingController _termController = TextEditingController();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> options = ['option 1', 'option 2', 'option 3'];
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Term',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              )),
          spacer10,
          CommonGestureDetector(
            onTap: () =>
                _openOptionsBottomSheet(context, _termController, options),
            textController: _termController,
            hintText: AppStrings.selectTerm,
            icon: Icons.arrow_drop_down_circle_sharp,
          ),
          spacer10,
          _syllabusList()
        ],
      ),
    );
  }

  void _openOptionsBottomSheet(
      BuildContext context, TextEditingController controller, List optionList) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          decoration: BoxDecoration(
              border: Border.all(width: 10, color: Colors.grey),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16), topLeft: Radius.circular(16))),
          height: SizeConfig.height(optionList.length * 90).toDouble(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  AppStrings.selectClass,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: optionList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(optionList[index]),
                          onTap: () {
                            controller.text = optionList[index];
                            Navigator.of(context).pop();
                          },
                        );
                      }))
            ],
          ),
        );
      },
    );
  }

  _syllabusList() {
    List itemList = [
      ['names', 'demos', 'demo items names'],
      [
        'names',
        'demos',
      ],
      ['names', 'demos', 'demo items names', 'name list'],
      ['names', 'demos', 'demo items names'],
    ];
    List<String> subNameList = ['Malayalam', 'Hindi', 'English', 'Physics'];
    return Expanded(
      flex: 1,
      child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return spacer10;
          },
          itemCount: subNameList.length,
          itemBuilder: (context, index) {
            return examTableCard(
                itemList[index].length, subNameList[index], itemList[index]);
          }),
    );
  }

  examTableCard(int itemCount, itemName, items) {
    return SizedBox(
      child: Column(
        children: [
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
            height: itemCount * 40 + 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      itemName,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Divider(
                    height: 2,
                    color: AppColors.primaryColor,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: Row(
                    children: [
                      const Text(
                        'Exam Date - ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '24/05/2024 ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          'Exam Portions - ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: itemCount * 40,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                    padding: const EdgeInsets.only(left: 15),
                                    height: 40,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(items[index]),
                                    ));
                              },
                              itemCount: itemCount),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
