


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class NoticeBoardDetailScreen extends StatelessWidget {
  const NoticeBoardDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: commonAppbar(title: 'NOTICE DETAIL'),
      endDrawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){}, label: const Text('VIEW ATTACHMENT')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: noticeDetailBody(context),
    );
  }

  noticeDetailBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(size),
          spacer20,
          title('South Indian Open Karate Championship 2024'),
          spacer20,
          date('18/02/2024'),
          spacer20,
          description('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available')
        ],
      ),
    );
  }


  title(title) {
    return Text(title,style: TextStyle(fontSize: SizeConfig.textSize(20),fontWeight: FontWeight.w600),);
  }

  date(date){
    return Text(date,style: TextStyle(fontSize: SizeConfig.textSize(17),color: AppColors.grey600),);
  }

  description(desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(desc,),
    );
  }

  image(Size size) {
    return Container(
      height: size.height * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
              image: CachedNetworkImageProvider(
                  'https://img.freepik.com/premium-photo/ecosystem-water-drop-nature-background-earth-day-campaign_839035-100466.jpg'
              )
          )
      ),
    );
  }
}
