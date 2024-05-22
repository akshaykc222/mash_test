import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/pages/home/teacherRating/widgets/question_widget.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

import '../../../../domain/entities/teacher_rating/teacher_rating.dart';

class TeacherRatingScreen extends StatelessWidget {
  const TeacherRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.teacherRating),
      endDrawer: DrawerWidget(),
      body: TeacherRatingBody(),
    );
  }
}

class TeacherRatingBody extends StatefulWidget {
  TeacherRatingBody({super.key});

  @override
  State<TeacherRatingBody> createState() => _TeacherRatingBodyState();
}

class _TeacherRatingBodyState extends State<TeacherRatingBody> {
  final ScrollController _scrollController = ScrollController();

  final TextEditingController _remarksController = TextEditingController();
  List<TeacherRating> ratingList = [
    TeacherRating(question: "How clear are the explanations in class?", questionIndex: "Q1", rating: 4),
    TeacherRating(question: "How engaging are the class discussions?", questionIndex: "Q2", rating: 3),
    TeacherRating(question: "How helpful is the feedback on assignments?", questionIndex: "Q3", rating: 5),
    TeacherRating(question: "How accessible is the teacher outside of class?", questionIndex: "Q4", rating: 4),
    TeacherRating(question: "How organized are the course materials?", questionIndex: "Q5", rating: 5),
    TeacherRating(question: "How well does the teacher respond to questions?", questionIndex: "Q6", rating: 4),
    TeacherRating(question: "How fair are the grading criteria?", questionIndex: "Q7", rating: 3),
    TeacherRating(question: "How responsive is the teacher to emails?", questionIndex: "Q8", rating: 5),
    TeacherRating(question: "How respectful is the teacher towards students?", questionIndex: "Q9", rating: 4),
    TeacherRating(question: "How well does the teacher encourage participation?", questionIndex: "Q10", rating: 4),
  ];

  @override
  Widget build(BuildContext context) {
    int rating = 0;
    int itemCount = 10;
    return SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.height(160),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                'https://placehold.co/600x400.png',
                              ),
                            )),
                      ),
                    ),
                    spacerWidth10,
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'KRISHNAPRIYA K U',
                              style: TextStyle(
                                  fontSize: SizeConfig.textSize(18),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'MUSIC',
                              style: TextStyle(
                                  fontSize: SizeConfig.textSize(15),
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '+91 - 9967545534',
                              style: TextStyle(
                                  fontSize: SizeConfig.textSize(15),
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'krishnapriya@gmail.com',
                              style: TextStyle(
                                  fontSize: SizeConfig.textSize(15),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              spacer10,
              Container(
                height: ratingList.length * SizeConfig.height(120),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 9,
                        offset: const Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child: ListView.builder(
                    controller: _scrollController,
                    itemCount: ratingList.length,
                    itemBuilder: (context, index) {
                      return QuestionWidget(
                       rating: ratingList[index],
                      );
                    }),
              ),
              spacer20,
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.enterRemarkTitle,
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              spacer10,
              CommonTextField(title: AppStrings.enterRemarks,lines: 3,controller: _remarksController,),
              spacer30,
              AnimatedSharedButton(onTap: (){
                  prettyPrint(ratingList.map((e) => e.toJson()).toString());
              }, title: Text(AppStrings.submitCapital,style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w600),), isLoading: false),
              spacer40
            ],
          ),
        ));
  }
}
