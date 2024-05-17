import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_small_button.dart';
import 'package:flutter_emoji_feedback/flutter_emoji_feedback.dart';


class ExamDetailBody extends StatelessWidget {
  ExamDetailBody({super.key});

  ValueNotifier<Color> yesButtonColor = ValueNotifier<Color>(Colors.grey.shade100);
  ValueNotifier<Color> noButtonColor = ValueNotifier<Color>(Colors.grey.shade100);
  ValueNotifier<Color> yesTextColor = ValueNotifier<Color>(Colors.black);
  ValueNotifier<Color> noTextColor = ValueNotifier<Color>(Colors.black);

  void selectYes() {
    yesButtonColor.value = Colors.green;
    noButtonColor.value = Colors.grey.shade100;
    yesTextColor.value = AppColors.white;
    noTextColor.value = AppColors.black;
  }

  void selectNo() {
    yesButtonColor.value = Colors.grey.shade100;
    noButtonColor.value = Colors.red;
    noTextColor.value = AppColors.white;
    yesTextColor.value = AppColors.black;
  }

  @override
  Widget build(BuildContext context) {
    Map<String, String> modelData = {
      'title': 'Cricket Quiz',
      'desc': 'Quiz on Cricket',
      'last_apply_date': '17-06-2024',
      'exam_date': '25-07-2024'
    };
    var size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(imageUrl: 'https://placehold.co/600x400.png'),
          spacer10,
          Align(
              alignment: Alignment.center,
              child: CommonSmallButton(
                  color: AppColors.primaryColor,
                  onPress: () {},
                  title: AppStrings.viewPdf,
                  prefixIcon: Icons.document_scanner_sharp)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Text(
              modelData['title']!,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Text(
              modelData['desc']!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Row(
              children: [
                const Text(
                  "${AppStrings.lastDateToApply} : ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Text(
                  modelData['desc']!,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Row(
              children: [
                const Text(
                  '${AppStrings.compExamDate} : ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Text(
                  modelData['desc']!,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: CommonSmallButton(
                  color: AppColors.barRed,
                  onPress: () {},
                  title: AppStrings.registerHere,
                  prefixIcon: Icons.app_registration)),
          const Padding(
            padding: EdgeInsets.only(left: 15.0, top: 20, bottom: 0.0),
            child: Text(
              AppStrings.rateNow,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          spacer10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: EmojiFeedback(
              elementSize: 50,
              animDuration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
              inactiveElementScale: .5,
              onChanged: (value) {
                // print(value);
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Text(
              AppStrings.attendingExam,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ValueListenableBuilder<Color>(
                  valueListenable: yesButtonColor,
                  builder: (context, color, _) {
                    return ElevatedButton(
                      onPressed: () => selectYes(),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: color,
                          shape: const StadiumBorder()
                      ),
                      child: ValueListenableBuilder<Color>(
                          valueListenable: yesTextColor,
                          builder: (context,color,_) {
                            return  Text(
                              'Yes',
                              style: TextStyle(color: color),
                            );
                          }
                      ),
                    );
                  },
                ),
                spacerWidth20,
                ValueListenableBuilder<Color>(
                  valueListenable: noButtonColor,
                  builder: (context, color, _) {
                    return ElevatedButton(
                      onPressed: () => selectNo(),
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: color
                      ),
                      child: ValueListenableBuilder<Color>(
                          valueListenable: noTextColor,
                          builder: (context,color,_) {
                            return  Text(
                              'No',
                              style: TextStyle(color: color),
                            );
                          }
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          spacer30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: AnimatedSharedButton(
                onTap: (){},
                title:  Text(AppStrings.submitCapital,style: TextStyle(color: AppColors.white),), isLoading: false),
          ),
          spacer30,
        ],
      ),
    );
  }
}
