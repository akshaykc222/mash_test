



import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/add_on_detail_card.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/side_drawer.dart';

class AddonDetailScreen extends StatelessWidget {
  const AddonDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
      appBar:commonAppbar(title: 'Explore'),
      drawer: DrawerWidget(),
      body: addOnDetailBody(),
    );
  }

  addOnDetailBody() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
          itemBuilder: (context,index){
              return AddOnDetailCard(
                  cardImage: "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
                  onPress: (){}, title: 'title',
                  description: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.");
          },
          itemCount: 5),
    );
  }

  sizedBox(double height) {
    return SizedBox(height: height,);
  }
}
