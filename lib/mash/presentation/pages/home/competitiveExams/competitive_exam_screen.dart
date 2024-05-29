import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/pages/home/competitiveExams/widgets/exam_link_card.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class CompetitiveExamScreen extends StatefulWidget {
  const CompetitiveExamScreen({super.key});

  @override
  State<CompetitiveExamScreen> createState() => _CompetitiveExamScreenState();
}

class _CompetitiveExamScreenState extends State<CompetitiveExamScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppStrings.examLinks),
          bottom: const TabBar(
            tabs: [
              Tab(text: AppStrings.toBeRegistered),
              Tab(text: AppStrings.registered),
            ],
          ),
        ),
        endDrawer: DrawerWidget(),
        body: const ExamBody(),
      ),
    );
  }
}

class ExamBody extends StatelessWidget {
  const ExamBody({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Center(
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return spacer7;
                },
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ExamLinkCard(
                    isRegistered: false,
                    title: 'ONLINE APTITUDE TEST',
                    date: '24/06/2023',
                    onPress: () => GoRouter.of(context).pushNamed(
                      AppPages.examDetailScreen,
                      extra: false,
                    ),
                  );
                })),
        Center(
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return spacer7;
                },
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ExamLinkCard(
                    isRegistered: true,
                    title: 'ONLINE APTITUDE TEST',
                    date: '24/06/2023',
                    onPress: () => GoRouter.of(context).pushNamed(
                      AppPages.examDetailScreen,
                      extra: true,
                    ),
                  );
                })),
      ],
    );
  }
}
