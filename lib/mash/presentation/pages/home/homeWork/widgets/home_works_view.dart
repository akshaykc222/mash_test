import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    return Scaffold(
      appBar: commonAppbar(
        title: AppStrings.homeWorks,
      ),
      endDrawer: DrawerWidget(),
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
            Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context,index){
                return HomeworkCard(
                  subject: 'Maths',
                  task: 'Project Work',
                  assignedDate: '10/10/2023',
                  submissionDate: '04-09-2023',
                  onTap: () {
                    context.pushNamed(AppPages.homeWorksViewDetailsScreen);
                  },
                );
              }),
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
