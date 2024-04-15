import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';

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
              _attendenceWidget(),
              Container(
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
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _attendenceWidget() {
    return Container(
      height: 170,
      width: 170,
      padding: const EdgeInsets.all(18),
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
                value: 0.3,
                color: Colors.grey,
                backgroundColor: AppColors.gradient,
                strokeWidth: 10,
              )),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'ATTENDENCE',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '75%',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'View Details',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    spacer4,
                    Icon(
                      Icons.navigate_next_rounded,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
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
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
        ),
        spacer4,
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
