import 'package:flutter/material.dart';

class NonAcademicBody extends StatelessWidget {
  const NonAcademicBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 15.0,
            bottom: 5,
          ),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Class',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              )),
        ),
      ],
    );
  }
}
