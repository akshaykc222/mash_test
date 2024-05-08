import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

import '../../../utils/app_colors.dart';

class TransferCancelScreen extends StatelessWidget {
  const TransferCancelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
      endDrawer: DrawerWidget(),
      appBar: commonAppbar(title: 'TC CANCEL'),
      body: tcCancelBody(context),
    );
  }

  tcCancelBody(context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
      height: size.height,
      width: size.width,
      child: ListView.separated(itemBuilder: (context,index){
        return transferCard(size);
      },
          separatorBuilder: (context,index){
        return spacer10;
          }, itemCount: 2),
    );
  }

  transferCard(Size size) {
    return Container(
      height: SizeConfig.height(200),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
            boxShadow: const [BoxShadow(
      color: Colors.grey,
        blurRadius: 5.0,
      ),],
      ),
      width: size.width,
    child: Row(
      children: [
        imageAndName('Richu','https://st3.depositphotos.com/9881890/13307/i/450/depositphotos_133078960-stock-photo-cute-smiling-boy.jpg'),
        detailAndCancel(),
        spacerWidth20
      ],
    ),
    );

  }

  imageAndName(name,image,) {
    return Expanded(
        flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin:const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: const  [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  ),],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(image))
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Text(name,style: TextStyle(fontSize: SizeConfig.textSize(20),fontWeight: FontWeight.w500,),))
          ],
        ));
  }

  detailAndCancel() {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          detailRow('Applied Date','30-APR-24'),
          detailRow('Expected Date of Relieve','30-APR-24'),
          detailRow('Reason for TC Applying','Parent Transfer'),
          spacer10,
          cancelButton(),
          spacer20
        ],
      ),
    );
  }

  detailRow(detailTitle,detailData) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              flex: 1,
              child: Text(detailTitle+ ' :',style:  TextStyle(fontWeight: FontWeight.w600,color: AppColors.grey600),)),
          Expanded(
              flex: 1,
              child: Text(detailData,textAlign: TextAlign.end,style: const TextStyle(fontWeight: FontWeight.w600),))
        ],
      ),
    );
  }

  cancelButton() {
    return Expanded(
        flex: 1,
      child: AnimatedSharedButton(onTap: (){}, title: Text('CANCEL TC',style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w700),), isLoading: false),
    );
  }
}
