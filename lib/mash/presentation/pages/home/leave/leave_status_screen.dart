

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class LeaveStatusScreen extends StatefulWidget {
  const LeaveStatusScreen({super.key});

  @override
  State<LeaveStatusScreen> createState() => _LeaveStatusScreenState();
}

class _LeaveStatusScreenState extends State<LeaveStatusScreen> {
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.leaveStatus),
    body:  leaveStatusBody(context),
      endDrawer: const DrawerWidget(),
    );
  }

  leaveStatusBody(BuildContext context) {
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
        margin: const EdgeInsets.symmetric(
            horizontal: 15, vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:
          AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withOpacity(0.6),
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Theme(
            data: Theme.of(context)
                .copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "subName",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  spacer7,
                  Text(
                    'Class not attended',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColors.barRed),
                  ),
                  spacer7,
                  Text(
                    'full name',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.greyText),
                  ),
                  spacer7,
                  const Text(
                    "12/02/2018 - 13/02/2018",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
              children: <Widget>[
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 6,
                        backgroundColor: AppColors.white),
                    icon: Icon(
                      Icons.file_copy_outlined,
                      color: AppColors.black,
                    ),
                    onPressed: () {
                      GoRouter.of(context).pushNamed(AppPages.homeWorksAndNoteViewScreen);
                    },
                    label: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        AppStrings.homeWorksCapital,
                        style: TextStyle(color: AppColors.black),
                      ),
                    )),
                spacer10,
                const Divider(),
                spacer10,
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '${AppStrings.teacher} - ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Text(
                          "state.getDailyTimeTable!.data![index].fullName",
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        /*CommonIconButton(
                            icon: Icons.call_outlined,
                            onTap: () => _launchCaller(state.getDailyTimeTable!.data![index].primaryMobile)),
                        CommonIconButton(
                            icon: Icons.message_outlined,
                            onTap: () {
                              GoRouter.of(context).pushNamed(AppPages.chatsListScreen);
                            }),*/
                      ],
                    ),
                  ],
                ),
              ],
            )));
  }
}

