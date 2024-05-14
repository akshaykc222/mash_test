import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

import '../../../manager/drawer_bloc/drawer_bloc.dart';

class NewsBoardMainScreen extends StatefulWidget {
  const NewsBoardMainScreen({super.key});

  @override
  State<NewsBoardMainScreen> createState() => _NewsBoardMainScreenState();
}

class _NewsBoardMainScreenState extends State<NewsBoardMainScreen> {
  @override
  void initState() {
    BlocProvider.of<DrawerBloc>(context).add(const DrawerEvent.getNewsBoard());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerWidget(),
      appBar: commonAppbar(title: 'NEWS BOARD'),
      body: newsBoardBody(context),
    );
  }

  newsBoardBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      height: size.height,
      width: size.width,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return newsCard(index, context);
          },
          separatorBuilder: (context, index) {
            return spacer10;
          },
          itemCount: 2),
    );
  }

  newsCard(int index, BuildContext context) {
    return BlocBuilder<DrawerBloc, DrawerState>(
      builder: (context, state) {
        final data = state.newsBoardResponse.data?[index];
        return GestureDetector(
          onTap: () => GoRouter.of(context).pushNamed(
              AppPages.newsBoardDetailScreen,
              extra: data as NewsBoardEntity),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 9,
                    offset: const Offset(0, 0),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title(data?.newsTitle ?? ""),
                description(data?.description ?? ""),
                dateAndDetailRow(
                  data?.newsDate ?? "",
                )
              ],
            ),
          ),
        );
      },
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
