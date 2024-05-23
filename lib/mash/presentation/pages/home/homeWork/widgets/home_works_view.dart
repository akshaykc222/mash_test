import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/home_work_notes_bloc/home_work_notes_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

import 'home_work_view_card_widget.dart';

class HomeworksView extends StatelessWidget {
  const HomeworksView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      HomeWorkNotesBloc.get(context).add(
          const HomeWorkNotesEvent.getHomeWorkReportEvent(
              startDate: '', endDate: ''));
    });
    return Scaffold(
      appBar: commonAppbar(
        title: AppStrings.homeWorks,
      ),
      endDrawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              height: SizeConfig.height(35),
              child: Image.asset(AppAssets.tekieImg),
            ),
            const SizedBox(height: 20),
            BlocBuilder<HomeWorkNotesBloc, HomeWorkNotesState>(
              builder: (context, state) {
                return Expanded(
                  child: ListView.builder(
                      itemCount: state.homeWorkReportResponse.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        final data = state.homeWorkReportResponse.data?[index];
                        return HomeworkCard(
                          subject: data?.description ?? "",
                          task: 'Project Work',
                          assignedDate: '10/10/2023',
                          submissionDate: '04-09-2023',
                          onTap: () {
                            context
                                .pushNamed(AppPages.homeWorksViewDetailsScreen);
                          },
                        );
                      }),
                );
              },
            )
            /*HomeworkCard(
              subject: 'Maths',
              task: 'Project Work',
              assignedDate: '10/10/2023',
              submissionDate: '04-09-2023',
              onTap: () {
                context.pushNamed(AppPages.homeWorksViewDetailsScreen);
              },
            ),*/
          ],
        ),
      ),
    );
  }
}
