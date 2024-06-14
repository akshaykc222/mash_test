import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/drawer_widget.dart';

class NoticeBoardMainScreen extends StatefulWidget {
  const NoticeBoardMainScreen({super.key});

  @override
  State<NoticeBoardMainScreen> createState() => _NoticeBoardMainScreenState();
}

class _NoticeBoardMainScreenState extends State<NoticeBoardMainScreen> {
  @override
  void initState() {
    BlocProvider.of<NoticeBloc>(context).add(const NoticeEvent.getAllNotice());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'NOTICE BOARD'),
      endDrawer: const DrawerWidget(),
      body: noticeBoardBody(context),
    );
  }

  noticeBoardBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return BlocBuilder<NoticeBloc, NoticeState>(
      builder: (context, state) => Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        height: size.height,
        width: size.width,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return noticeCard(index, context);
            },
            separatorBuilder: (context, index) {
              return spacer10;
            },
            itemCount: state.noticeResponseData.data?.length ?? 0),
      ),
    );
  }

  noticeCard(int index, BuildContext context) {
    List<String> descList = [
      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available',
      'Lorem ipsum, placeholder or dummy text used in typesetting and graphic design for previewing layouts. It features scrambled Latin text,'
    ];

    return GestureDetector(
      onTap: () =>
          GoRouter.of(context).pushNamed(AppPages.noticeBoardDetailScreen),
      child: primaryShadowContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title('South Indian Open Karate Championship 2024'),
            description(descList[index]),
            dateAndDetailRow(
              '18/9/2023',
            )
          ],
        ),
      ),
    );
  }

  title(title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: SizeConfig.textSize(16), fontWeight: FontWeight.w600),
    );
  }

  description(desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        desc,
      ),
    );
  }

  dateAndDetailRow(date) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          date,
          style: TextStyle(color: AppColors.greyText),
        ),
        Row(
          children: [
            Text(
              'Details',
              style: TextStyle(color: AppColors.grey600),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 13,
              color: AppColors.grey600,
            )
          ],
        )
      ],
    );
  }
}
