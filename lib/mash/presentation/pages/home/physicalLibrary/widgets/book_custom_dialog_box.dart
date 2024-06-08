

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/domain/entities/library/physical_library_entity.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

class CustomDialog extends StatelessWidget {
  final PhysicalLibraryEntity entity;
  const CustomDialog({super.key, re, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
              entity.authorName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: CachedNetworkImage(
                imageUrl:entity.coverImg,
                fit: BoxFit.cover,
                 // height: 200,
                 // width: 80,
                placeholder: (BuildContext context, String url) => const Center(child: CircularProgressIndicator(),),
                errorWidget: (BuildContext context, String url, dynamic error) => const Icon(Icons.error),
              ),
            ),
            spacer20,
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(child: Text('Language')),
                const Text(' : '),
                Expanded(child: Text(entity.lang)),
              ],
            ),  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(child: Text('Book Status')),
                const Text(' : '),
                Expanded(child: Text(entity.status == "0" ? 'Not Available' :'Available',style: TextStyle(
                  color: entity.status == "0" ? AppColors.redColor : AppColors.green
                ),)),
              ],
            ), Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(child: Text('Volume')),
                const Text(' : '),
                Expanded(child: Text(entity.volume)),
              ],
            ),  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(child: Text('Published Year')),
                const Text(' : '),
                Expanded(child: Text(entity.publishedDate)),
              ],
            ), Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(child: Text('Description')),
                const Text(' : '),
                Expanded(child: Text(entity.bookDescription)),
              ],
            ),
            spacer20,
            ElevatedButton(
              onPressed: () {
                // Your request button logic here
              },
              child: const Text('Request'),
            ),
          ],
        ),
      ),
    );
  }
}