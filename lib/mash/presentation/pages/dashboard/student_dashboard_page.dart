import 'package:flutter/material.dart';
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
     body: ListView(children: [
       Image.asset('assets/images/student_dummy.png')
     
     ],),
          );
  }
}
