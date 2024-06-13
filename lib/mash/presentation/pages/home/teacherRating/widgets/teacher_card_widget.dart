import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

class TeacherCardWidget extends StatelessWidget {
  const TeacherCardWidget({super.key,
  required this.imageUrl,
    required this.teacherName,
    required this.subjectName,
    required this.rating,
    required this.onTap,
    required this.isRated
  });

  final String imageUrl;
  final String teacherName;
  final String subjectName;
  final String rating;
  final VoidCallback onTap;
  final bool isRated;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        height: SizeConfig.height(100),
        decoration: BoxDecoration(
            color: isRated == true ?Colors.red.shade100 : AppColors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.purple.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 0),
              )
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Center(
            child: ListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: 0),
              dense: false,
              contentPadding: const EdgeInsets.all(0),
              leading:  ClipRRect(
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.hardEdge,
                child: Container(
                  width: SizeConfig.width(60),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(imageUrl,)
                    )
                  )
                ),
              ),
              title:  Text(teacherName,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
              subtitle:  Text('Subject : $subjectName',style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              trailing: Container(
                height: SizeConfig.height(30),
                  width: SizeConfig.width(60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isRated ? Colors.red.shade200 : AppColors.yellow
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(rating,style: TextStyle(fontSize: SizeConfig.textSize(15),color: AppColors.white),),
                        spacerWidth6,
                         Icon(Icons.star,color: AppColors.white,size: 15,),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
