import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/pages/home/widgets/progress_indicator_widget.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/enums.dart';

class SubjectPerfomanceWidget extends StatelessWidget {
  const SubjectPerfomanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DashboardBloc, DashboardState>(
      listenWhen: (previous, current) {
        return previous.selectedTermIndex != current.selectedTermIndex ||
            previous.termDetailsResponse?.status !=
                    current.termDetailsResponse?.status &&
                current.termDetailsResponse?.data != null;
      },
      listener: (context, state) {
        String studentId =
            context.read<ProfileBloc>().state.getUserDetail?.data?.usrId ?? "";
        if (studentId != "") {
          BlocProvider.of<DashboardBloc>(context).add(
              DashboardEvent.getScoreboardDetailsEvent(
                  termId: state.termDetailsResponse
                          ?.data?[state.selectedTermIndex].termId ??
                      "",
                  studentId: studentId));
        }
      },
      builder: (context, state) {
        return BlocListener<ProfileBloc, ProfileState>(
          listenWhen: (previous, current) =>
              current.getUserDetail?.status != previous.getUserDetail?.status,
          listener: (context, profileState) {
            if (profileState.getUserDetail?.status == Status.COMPLETED) {
              BlocProvider.of<DashboardBloc>(context).add(
                  DashboardEvent.getScoreboardDetailsEvent(
                      termId: state.termDetailsResponse
                              ?.data?[state.selectedTermIndex].termId ??
                          "",
                      studentId:
                          profileState.getUserDetail?.data?.usrId ?? ""));
            }
          },
          child: Column(
            children: [
              _title(),
              spacer20,
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: state.scoreBoardResponse.data?.resTable.length ?? 0,
                itemBuilder: (context, index) {
                  final data = state.scoreBoardResponse.data?.resTable[index];
                  double totalMark = double.parse(data?.totalMarks ?? '0');
                  double obtdMark = double.parse(data?.obtainedMarks ?? '0');
                  double progresValue = (obtdMark / totalMark);
                  String value = '${totalMark.toInt()}/${obtdMark.toInt()}';
                  if (data?.obtainedMarks == "AB") {
                    obtdMark = 0;
                    value = 'Absent';
                  }
                  return Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          state.scoreBoardResponse.data?.resTable[index]
                                  .subjectName ??
                              '',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            ProgressIndicatorWidget(
                              initialValue: progresValue,
                              progressIndicatorType:
                                  ProgressIndicatorType.linear,
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    right: 8.0,
                                    top: 2,
                                  ),
                                  child: Text(
                                    value,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) => spacer10,
              )
            ],
          ),
        );
      },
    );
  }

  Widget _title() {
    return const Row(
      children: [
        Text(
          'Subject',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Marks',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
