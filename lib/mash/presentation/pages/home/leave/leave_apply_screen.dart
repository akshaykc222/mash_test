import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/home/leave/widgets/common_icon_button.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class LeaveApplyScreen extends StatelessWidget {
  const LeaveApplyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.applyLeave),
      endDrawer: const DrawerWidget(),
      body: const ApplyLeaveBody(),
    );
  }
}

class ApplyLeaveBody extends StatefulWidget {
  const ApplyLeaveBody({super.key});

  @override
  State<ApplyLeaveBody> createState() => _ApplyLeaveBodyState();
}

class _ApplyLeaveBodyState extends State<ApplyLeaveBody> {
  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _toDateController = TextEditingController();
  final TextEditingController _reasonController = TextEditingController();
  final TextEditingController dateCountController = TextEditingController();

  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        controller.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(AppStrings.fromDate),
          dateSelection(_fromDateController),
          spacer20,
          titleText(AppStrings.toDate),
          dateSelection(_toDateController),
          spacer20,
          titleText(AppStrings.appliedLeaveCount),
          dateCountWidget(),
          spacer20,
          titleText(AppStrings.leaveReason),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CommonTextField(
                controller: _reasonController,
                lines: 3,
                title: AppStrings.enterReason),
          ),
          spacer7,
          infoText(AppStrings.docInfo),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CommonIconButton(
              onTap: () {},
              title: AppStrings.upload,
              icon: Icons.file_upload_outlined,
            ),
          ),
          spacer20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: AnimatedSharedButton(
                onTap: () {},
                title: Text(
                  AppStrings.takePhoto,
                  style: TextStyle(color: AppColors.white),
                ),
                isLoading: false),
          )
        ],
      ),
    );
  }

  dateSelection(TextEditingController controller) {
    return GestureDetector(
      onTap: () => _selectDate(context, controller),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
            elevation: 2,
            surfaceTintColor: AppColors.primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: controller,
                          enabled: false,
                          style: TextStyle(color: AppColors.black),
                          decoration: const InputDecoration(
                            hintText: 'Select a date',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.edit_calendar,
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }

  titleText(title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10, left: 25),
      child: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }

  infoText(title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10, left: 25),
      child: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      ),
    );
  }

  @override
  void dispose() {
    _fromDateController.dispose();
    _toDateController.dispose();
    _reasonController.dispose();
    super.dispose();
  }

  dateCountWidget() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
          elevation: 2,
          surfaceTintColor: AppColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: dateCountController,
                        enabled: false,
                        style: TextStyle(color: AppColors.black),
                        decoration: const InputDecoration(
                          hintText: 'Date Count',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
