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
    required this.onTap
  });

  final String imageUrl;
  final String teacherName;
  final String subjectName;
  final String rating;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        height: SizeConfig.height(100),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 9,
                offset: const Offset(0, 0),
              )
            ]
        ),
        child: Center(
          child: ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: 0),
            dense: false,
            contentPadding: const EdgeInsets.all(0),
            leading:  Transform(
              transform: Matrix4.translationValues(-16, 0.0, 0.0),
              child: CircleAvatar(radius: 60,
              backgroundImage: CachedNetworkImageProvider(imageUrl,),
              ),
            ),
            title:  Transform(
                transform: Matrix4.translationValues(-20, 0.0, 0.0),
                child: Text(teacherName,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600),)),
            subtitle:  Transform(
                transform: Matrix4.translationValues(-20, 0.0, 0.0),
                child: Text('Subject : $subjectName',style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SizedBox(
                height: SizeConfig.height(150),
                // width: SizeConfig.width(50),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(Icons.star,color: Colors.yellow,),
                    spacer4,
                    Container(
                      width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow.shade700
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(rating,style: TextStyle(fontSize: 16,color: AppColors.white),),
                              spacerWidth6,
                              const Icon(Icons.star,color: Colors.yellow,),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}