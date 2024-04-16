import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/pages/dashboard/attendence_detail_screen.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import '../../router/app_pages.dart';
import '../../utils/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    theme: AppThemes.mainTheme,
    home: AttendenceDetailScreen(),
  ));
}

class StudentDashboardPage extends StatelessWidget {
  const StudentDashboardPage({super.key});

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
                gradient: AppColors.lightBlueGradientColors,
              ),
            ),
            Container(
              height: 1,
              width: SizeUtility(context).width * 0.28,
              decoration: BoxDecoration(
                gradient: AppColors.lightBlueGradientColors,
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
            Container(
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
            )
          ],
        ),
      ],
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
          child: Stack(
            children: [
              SizedBox(
                  height: 170,
                  width: 170,
                  child: CircularProgressIndicator(
                    value: 0.8,
                    color: AppColors.gradient,
                    backgroundColor: Colors.grey,
                    strokeWidth: 8,
                    // strokeAlign: BorderSide.strokeAlignInside,
                    strokeCap: StrokeCap.round,
                  )),
              const Positioned(
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
            color: AppColors.gradient,
            width: 3,
          ),
          image: const DecorationImage(
            image: AssetImage('assets/images/student_dummy.png'),
          )),
    );
  }
}
