import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/teacher_bloc/teacher_bloc.dart';
import 'package:mash/mash/presentation/pages/home/teacherRating/widgets/teacher_card_widget.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/handle_error.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class TeacherListScreen extends StatelessWidget {
  const TeacherListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.teacherList),
      endDrawer: const DrawerWidget(),
      body: const TeacherListBody(),
    );
  }
}

class TeacherListBody extends StatelessWidget {
  const TeacherListBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    TeacherBloc.get(context).add(const TeacherEvent.getRatings());
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: BlocConsumer<TeacherBloc, TeacherState>(
          builder: (context, state) {
            return state.getTeacherRating?.status == Status.LOADING ? const Center(
              child: SizedBox(
                height: 60,
                width: 60,
                child: CircularProgressIndicator(),),
            ) : ListView.builder(
                itemBuilder: (context, index) {
                  return TeacherCardWidget(
                    onTap: () =>
                        GoRouter.of(context)
                            .pushNamed(AppPages.teacherRatingScreen),
                    imageUrl:  state.getTeacherRating!.data![index].docName,
                    teacherName: state.getTeacherRating!.data![index].fullName,
                    subjectName: state.getTeacherRating!.data![index].subName,
                    rating: state.getTeacherRating!.data![index].rating.toString(),
                  );
                },
                itemCount: state.getTeacherRating?.data?.length);
          }, listener: (BuildContext context, TeacherState state) {
            if(state.getTeacherRating?.status == Status.ERROR ){
              handleErrorUi(context: context, error: state.getTeacherRating?.error);
            }
        },
        ),
      ),
    );
  }
}
