

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class NoticeBoardMainScreen extends StatelessWidget {
  const NoticeBoardMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'NOTICE BOARD'),
      endDrawer: DrawerWidget(),
      body: noticeBoardBody(context),
    );
  }


  noticeBoardBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
      height: size.height,
      width: size.width,
      child: ListView.separated(itemBuilder: (context,index){
        return noticeCard(index,context);
      },
          separatorBuilder: (context,index){
            return spacer10;
          }, itemCount: 2),
    );
  }

  noticeCard(int index, BuildContext context) {
    List<String> descList = ['In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available','Lorem ipsum, placeholder or dummy text used in typesetting and graphic design for previewing layouts. It features scrambled Latin text,'];

    return GestureDetector(
      onTap: ()=> GoRouter.of(context).pushNamed(AppPages.newsBoardDetailScreen),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.white, boxShadow: [
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
            title('South Indian Open Karate Championship 2024'),
            description(descList[index]),
            dateAndDetailRow('18/9/2023',)
          ],
        ),
      ),
    );
  }

  title(title) {
    return Text(title,style: TextStyle(fontSize: SizeConfig.textSize(16),fontWeight: FontWeight.w600),);
  }

  description(desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(desc,),
    );
  }

  dateAndDetailRow(date) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(date,style: TextStyle(color: AppColors.greyText),),
        Row(
          children: [
            Text('Details',style: TextStyle(color: AppColors.grey600),),
            Icon(Icons.arrow_forward_ios_outlined,size: 13,color: AppColors.grey600,)
          ],
        )
      ],
    );
  }
}
