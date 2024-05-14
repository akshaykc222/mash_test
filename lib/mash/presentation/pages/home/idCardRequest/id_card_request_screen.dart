
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/student_profile_widget.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_bottom_sheet.dart';
import 'package:mash/mash/presentation/widgets/common_gesture_detector.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class IdCardRequestScreen extends StatefulWidget {
  const IdCardRequestScreen({super.key});

  @override
  State<IdCardRequestScreen> createState() => _IdCardRequestScreenState();
}

class _IdCardRequestScreenState extends State<IdCardRequestScreen> {

  final TextEditingController _requestController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: commonAppbar(title: AppStrings.idCardRequest),
      endDrawer: DrawerWidget(),
      body: idRequestBody(context),
    );
  }

  idRequestBody(BuildContext context) {
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
    return Container(
      height: size.height,
      width:  size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(AppStrings.studentName),
          StudentProfileWidget(
            onTap: () async {
              _showModelSheet(context);
            },
          ),
          titleText(AppStrings.request),
          CommonGestureDetector(
              onTap: ()=>_openOptionsBottomSheet(
                  context, _requestController, options, AppStrings.selectModule), icon: Icons.arrow_drop_down_circle, textController: _requestController, hintText: AppStrings.requestType),
          titleText(AppStrings.remarks),
          CommonTextField(
            lines: 4,
              title: AppStrings.enterRemarks),
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

  Future<void> _showModelSheet(BuildContext context) {
    return commonBottomSheet(
      context,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return StudentProfileWidget(
              onTap: () {},
            );
          },
          separatorBuilder: (context, index) => spacer10,
          itemCount: 3),
      title: AppStrings.selectProfile,
      height: 0.55,
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
