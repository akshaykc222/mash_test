import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji_feedback/flutter_emoji_feedback.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_small_button.dart';


class RegisteredExamDetailBody extends StatelessWidget {
  RegisteredExamDetailBody({super.key});


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
                  "${AppStrings.appliedDate} : ",
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
          const Padding(
            padding: EdgeInsets.only(left: 15.0, top: 20, bottom: 0.0),
            child: Text(
              AppStrings.rating,
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
          spacer30,
        ],
      ),
    );
  }
}
