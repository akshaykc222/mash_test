

import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/student_profile_widget.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_bottom_sheet.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class TransferRequestScreen extends StatefulWidget {
  const TransferRequestScreen({super.key});

  @override
  State<TransferRequestScreen> createState() => _TransferRequestScreenState();
}

class _TransferRequestScreenState extends State<TransferRequestScreen> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _optionController = TextEditingController();

  DateTime _selectedDate = DateTime.now();


  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }


  void _openOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: SizeConfig.height(300),
          child: Column(
            children: [
              ListTile(
                title: const Text('Option 1'),
                onTap: () {
                  _optionController.text = 'Option 1';
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Option 2'),
                onTap: () {
                  _optionController.text = 'Option 2';
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Option 3'),
                onTap: () {
                  _optionController.text = 'Option 3';
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Option 4'),
                onTap: () {
                  _optionController.text = 'Option 4';
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Option 5'),
                onTap: () {
                  _optionController.text = 'Option 5';
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'TC REQUEST'),
      endDrawer: DrawerWidget(),
      body: tcRequestBody(context),
    );
  }

  tcRequestBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titles('Student Name'),
          StudentProfileWidget(
            onTap: () async {
              _showModelSheet(context);
            },
          ),
          titles('Expected Date'),
          dateSelection(),
          titles('Reason for Applying TC'),
          selectReason(),
          spacer30,
          applyButton()
        ],
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

  titles(title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: Text(title,style: TextStyle(fontSize: SizeConfig.textSize(17),fontWeight: FontWeight.w500),),
    );
  }

  dateSelection() {
    return GestureDetector(
      onTap: ()=> _selectDate(context),
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
                          controller: _dateController,
                          enabled: false,
                          style:  TextStyle(color: AppColors.black),
                          decoration: const InputDecoration(
                            hintText: 'Select a date',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                       Icon(Icons.edit_calendar,color: AppColors.primaryColor,),
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }

  selectReason() {
    return GestureDetector(
      onTap: ()=> _openOptionsBottomSheet(context),
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
                          controller: _optionController,
                          enabled: false,
                          style:  TextStyle(color: AppColors.black),
                          decoration: const InputDecoration(
                            hintText: 'Select a reason to apply',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                       Icon(Icons.arrow_drop_down_circle,color: AppColors.primaryColor,),
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }

  applyButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: AnimatedSharedButton(onTap: (){}, title: Text('APPLY',style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w600,fontSize: SizeConfig.textSize(18)),) , isLoading: false),
    );
  }
}
