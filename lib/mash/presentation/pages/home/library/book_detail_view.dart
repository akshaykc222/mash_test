import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';

import '../../../../domain/entities/dashboard/digital_library_entity.dart';

class BookDetailView extends StatelessWidget {
  final DigitalLibraryEntity book;
  const BookDetailView({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedSharedButton(
            onTap: () {},
            title: Text(
              "Read",
              style: TextStyle(color: AppColors.white),
            ),
            isLoading: false),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: height * 0.38,
            child: Stack(
              children: [
                SizedBox(
                  height: SizeConfig.height(height * 0.26),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CachedNetworkImage(
                        imageUrl:
                            "https://th.bing.com/th/id/OIP.CH58o4Lz_c5K1cgN7MZCoAAAAA?rs=1&pid=ImgDetMain",
                        fit: BoxFit.fill,
                      ),
                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: const SizedBox(),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: height * 0.25,
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://www.keyreporter.org/wp-content/uploads/2020/05/BookBlue_635793820083213709.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          spacer10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  book.contentName ?? "",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
                spacer4,
                Text(
                  book.authorName ?? "",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.black38),
                ),
                Text(
                  "${book.languageName}",
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  child: Divider(),
                ),
                spacer10,
                Text(book.contentDesc ?? "")
              ],
            ),
          )
        ],
      ),
    );
  }
}
