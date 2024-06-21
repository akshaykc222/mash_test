import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../../domain/entities/dashboard/digital_library_entity.dart';

class BookDetailView extends StatefulWidget {
  final DigitalLibraryEntity book;
  const BookDetailView({
    super.key,
    required this.book,
  });

  @override
  State<BookDetailView> createState() => _BookDetailViewState();
}

class _BookDetailViewState extends State<BookDetailView>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: commonAppbar(title: widget.book.contentName ?? ""),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
          buildWhen: (previous, current) =>
              previous.downloadProgress != current.downloadProgress,
          builder: (context, state) {
            return AnimatedSharedButton(
                onTap: () {
                  prettyPrint("Tapping");
                  DigitalLibraryBloc.get(context).add(
                      DigitalLibraryEvent.readBook(widget.book,
                          context: context));
                },
                title: Text(
                  "Read",
                  style: TextStyle(color: AppColors.white),
                ),
                progress: state.downloadProgress,
                isLoading: false);
          },
        ),
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
                        imageUrl: widget.book.coverImg ?? "",
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
                            imageUrl: widget.book.coverImg ?? "",
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
                  widget.book.contentName ?? "",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
                spacer4,
                Text(
                  widget.book.authorName ?? "",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.black38),
                ),
                Text(
                  "${widget.book.languageName}",
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppAssets.heart,
                          width: 40,
                          height: 40,
                          colorFilter: ColorFilter.mode(
                              AppColors.primaryColor, BlendMode.srcIn),
                        )),
                    // Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppAssets.bookmark,
                          width: 40,
                          height: 40,
                          colorFilter: ColorFilter.mode(
                              AppColors.primaryColor, BlendMode.srcIn),
                        )),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  child: Divider(),
                ),
                spacer10,
                Text(widget.book.contentDesc ?? "")
              ],
            ),
          )
        ],
      ),
    );
  }
}
