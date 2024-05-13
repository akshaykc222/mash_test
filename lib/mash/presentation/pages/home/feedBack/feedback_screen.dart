import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_gesture_detector.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';
import 'package:flutter_emoji_feedback/flutter_emoji_feedback.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final TextEditingController _moduleController = TextEditingController();
  final TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.feedbackForm),
      endDrawer: DrawerWidget(),
      body: feedbackBody(context),
    );
  }

  feedbackBody(BuildContext context) {
    List<String> options = [
      'option 1',
      'option 2',
      'option 2',
      'option 2',
      'option 2',
      'option 3',
      'option 3',
      'option 3',
      'option 3',
      'option 3'
    ];
    var size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText(AppStrings.selectModule),
            CommonGestureDetector(
              onTap: () => _openOptionsBottomSheet(
                  context, _moduleController, options, AppStrings.selectModule),
              textController: _moduleController,
              hintText: 'Select Module',
              icon: Icons.arrow_drop_down_circle_sharp,
            ),
            spacer20,
            Align(
              alignment: Alignment.center,
              child: titleText(AppStrings.howSatisfied),
            ),
            spacer20,
            EmojiFeedback(
              animDuration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
              inactiveElementScale: .5,
              onChanged: (value) {
                print(value);
              },
            ),
            spacer30,
            titleText(AppStrings.howToImprove),
            CommonTextField(
              lines: 4,
              title: AppStrings.suggestFeedback,
              controller: _feedbackController,
            ),
            spacer30,
            AnimatedSharedButton(
                onTap: () {},
                title: Text(
                  AppStrings.submitCapital,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: AppColors.white),
                ),
                isLoading: false)
          ],
        ),
      ),
    );
  }

  titleText(title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }

  void _openOptionsBottomSheet(BuildContext context,
      TextEditingController controller, List optionList, String sheetTitle) {
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  sheetTitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18),
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
}
