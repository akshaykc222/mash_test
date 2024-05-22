import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/pages/home/teacherRating/widgets/teacher_card_widget.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class TeacherListScreen extends StatelessWidget {
  const TeacherListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.teacherList),
      endDrawer: DrawerWidget(),
      body: const TeacherListBody(),
    );
  }
}

class TeacherListBody extends StatelessWidget {
  const TeacherListBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
            itemBuilder: (context, index) {
              return TeacherCardWidget(
                onTap: () => GoRouter.of(context)
                    .pushNamed(AppPages.teacherRatingScreen),
                imageUrl: 'https://placehold.co/600x400.png',
                teacherName: 'SindhuSindhu',
                subjectName: 'MUSIC',
                rating: '4.5',
              );
            },
            itemCount: 10),
      ),
    );
  }
}
