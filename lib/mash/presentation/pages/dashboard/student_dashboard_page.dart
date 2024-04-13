import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/custom_app_bar.dart';

void main() {
  runApp(const MaterialApp(
    home: StudentDashboardPage(),
  ));
}

class StudentDashboardPage extends StatelessWidget {
  const StudentDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context),
      body: ListView(
        children: [
          Image.asset('assets/images/student_dummy.png'),
          spacer26,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.arrow_back_ios),
              _selectStudentProfileWidget(),
              _selectStudentProfileWidget(),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
          spacer20,
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Rahul Balakrishnan",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          spacer30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _nameWidget('Class Teacher', 'Rajani Rajan'),
                _nameWidget('Roll No', '0394'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 1,
                width: SizeUtility(context).width / 5,
                decoration: BoxDecoration(
                  gradient: AppColors.lightBlueGradientColors,
                ),
              ),
              Container(
                height: 1,
                width: SizeUtility(context).width / 5,
                decoration: BoxDecoration(
                  gradient: AppColors.lightBlueGradientColors,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _nameWidget(String title, String name) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _selectStudentProfileWidget() {
    return Container(
      height: 50,
      width: 50,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
    );
  }
}
