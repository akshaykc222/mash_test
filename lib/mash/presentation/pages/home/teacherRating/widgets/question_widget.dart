
import 'package:flutter/material.dart';
import 'package:flutter_emoji_feedback/flutter_emoji_feedback.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_questions_entity.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';


class QuestionWidget extends StatelessWidget {

   const QuestionWidget( {super.key,required this.rating, required this.index, });

   final int index;
  final TeacherRatingQuestionsEntity rating;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: SizeConfig.height(125),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$index . ${rating.questions}",style: const TextStyle(fontWeight: FontWeight.w500),),
          spacer10,
          EmojiFeedback(
            elementSize: 35,
            initialRating: 1,
            animDuration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
            inactiveElementScale: .5,
            onChanged: (value) {

              rating.rating=value;
            },
          ),
        ],
      ),
    );
  }
}
