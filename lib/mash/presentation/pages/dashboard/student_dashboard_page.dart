import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';
import '../../router/app_pages.dart';
import '../home/widgets/progress_indicator_widget.dart';

List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class ParentDashBoard extends StatefulWidget {
  const ParentDashBoard({super.key});

  @override
  State<ParentDashBoard> createState() => _ParentDashBoardState();
}

class _ParentDashBoardState extends State<ParentDashBoard> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: customAppbar(context),
      body: CustomScrollView(
        slivers: [
          _header(),
          _body(context),
        ],
      ),
    );
  }

  _body(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
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
          _studentDetailWidget(context),
          spacer50,
          _viewCalenderBtn(context),
          spacer30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AppStrings.perfomance,
                  style: TextStyle(
                    fontSize: 17,
                    letterSpacing: 1.3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                DropdownMenu<String>(
                  menuStyle: MenuStyle(),
                  initialSelection: list.first,
                  enableSearch: true,
                  onSelected: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries:
                      list.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _viewCalenderBtn(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(SizeUtility(context).width / 2, 45),
        elevation: 2,
        backgroundColor: AppColors.white,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          assetFromSvg(
            AppAssets.timeTableIcon,
            color: AppColors.primaryColor,
          ),
          spacerWidth10,
          Text(
            AppStrings.viewCalendar,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.black,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }

  Widget _studentDetailWidget(BuildContext context) {
    return Column(
      children: [
        spacer20,
        const Align(
          alignment: Alignment.center,
          child: Text(
            "Rahul Balakrishnan",
            style: TextStyle(
              fontSize: 20,
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
        spacer7,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 1,
              width: SizeUtility(context).width * 0.28,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
            ),
            Container(
              height: 1,
              width: SizeUtility(context).width * 0.28,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
            )
          ],
        ),
        spacer10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(
                Icons.call_outlined,
              ),
              spacerWidth20,
              const Icon(Icons.chat_bubble_outline),
              const Spacer(),
              _nameWidget('Class', 'LKG A')
            ],
          ),
        ),
        spacer10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          verticalDirection: VerticalDirection.down,
          children: [
            _attendenceProgressWidget(context),
            _gradeWidget(),
          ],
        ),
      ],
    );
  }

  Widget _gradeWidget() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 9,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Container(
        height: 91,
        width: 91,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        child: const Center(
          child: Text(
            'A',
            style: TextStyle(
              fontSize: 40,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _attendenceProgressWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushNamed(AppPages.attendanceDetailScreen);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 9,
                offset: const Offset(0, 5))
          ],
        ),
        child: Container(
          height: 170,
          width: 170,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.textShadowWhite,
            ),
          ),
          child: const Stack(
            children: [
              SizedBox(
                height: 170,
                width: 170,
                child: ProgressIndicatorWidget(
                  progressIndicatorType: ProgressIndicatorType.circular,
                  initialValue: 0.8,
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'ATTENDENCE',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '75%',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View Details',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  SliverAppBar _header() {
    return SliverAppBar(
      expandedHeight: 200.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/images/student_dummy.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _nameWidget(String title, String name) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        spacer4,
        Text(
          name,
          style: const TextStyle(
            fontSize: 14,
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
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.primaryColor,
          width: 3,
        ),
        image: const DecorationImage(
          image: AssetImage('assets/images/student_dummy.png'),
        ),
      ),
    );
  }
}
