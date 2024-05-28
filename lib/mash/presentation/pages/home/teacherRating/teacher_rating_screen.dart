import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/teacher_bloc/teacher_bloc.dart';
import 'package:mash/mash/presentation/pages/home/teacherRating/widgets/question_widget.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/handle_error.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

import '../../../widgets/drawer_widget.dart';

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

  @override
  Widget build(BuildContext context) {
    TeacherBloc.get(context).add(TeacherEvent.getRatingQuestions());
    int rating = 0;
    int itemCount = 10;
    return SingleChildScrollView(
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
            Wrap(
              children: [
                Container(
                  // height: .length * SizeConfig.height(120),
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
                  child: BlocConsumer<TeacherBloc, TeacherState>(
                    listener: (context, state) {
                      if (state.getTeacherRatingQuestions?.status ==
                          Status.ERROR) {
                        handleErrorUi(
                            context: context,
                            error: state.getTeacherRatingQuestions?.error);
                      }
                    },
                    builder: (context, state) {
                      return state.getTeacherRatingQuestions?.status ==
                              Status.LOADING
                          ? const Center(
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: CircularProgressIndicator(),
                              ),
                            )
                          : state.getTeacherRatingQuestions?.status !=
                                  Status.ERROR
                              ? ListView.builder(
                                  controller: _scrollController,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: state.getTeacherRatingQuestions
                                          ?.data?.length ??
                                      0,
                                  itemBuilder: (context, index) {
                                    return QuestionWidget(
                                      index: index + 1,
                                      rating: state.getTeacherRatingQuestions!
                                          .data![index],
                                    );
                                  })
                              : const SizedBox();
                    },
                  ),
                ),
              ],
            ),
            spacer20,
            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppStrings.enterRemarkTitle,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            spacer10,
            CommonTextField(
              title: AppStrings.enterRemarks,
              lines: 3,
              controller: _remarksController,
            ),
            spacer30,
            AnimatedSharedButton(
                onTap: () {
                  // prettyPrint(ratingList.map((e) => e.toJson()).toString());
                },
                title: Text(
                  AppStrings.submitCapital,
                  style: TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.w600),
                ),
                isLoading: false),
            spacer40
          ],
        ),
      ),
    );
  }
}
