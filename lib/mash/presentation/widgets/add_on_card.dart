

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';

class AddOnCard extends StatelessWidget {
  const AddOnCard({super.key,required this.cardImage,required this.onPress});

  final String cardImage;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0,right: 15,left: 15),
      child: InkWell(
        onTap: onPress,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              clipBehavior: Clip.hardEdge,
              child: CachedNetworkImage(
                imageUrl: cardImage,
                fit: BoxFit.cover,
                height: size.height* 0.22,
                width: size.width,
                placeholder: (BuildContext context, String url) => Image.asset(AppAssets.mashLoginLogo),
                errorWidget: (BuildContext context, String url, dynamic error) => const Icon(Icons.error),
              ),
            ),
            Positioned(
              top: 25,
              right: 25,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.0),
                  child:  Text(
                    'Explore',
                    style: TextStyle(
                      color: Colors.white,

                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
