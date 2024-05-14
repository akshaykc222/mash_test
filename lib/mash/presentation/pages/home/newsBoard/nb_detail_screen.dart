import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class NewsBoardDetailScreen extends StatelessWidget {
  final NewsBoardEntity newsDetails;
  const NewsBoardDetailScreen({super.key, required this.newsDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: newsDetails.newsTitle ?? ""),
      endDrawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 2,
        onPressed: () {
          prettyPrint('pdf data ${newsDetails.content}');
          PDFView(
            filePath: newsDetails.content,
          );
        },
        label: const Text('View Attachment'),
        extendedIconLabelSpacing: 20,

        // shape: Border.all(color: Colors.white, style: BorderStyle.solid),
        icon: const Icon(Icons.keyboard_arrow_down_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: newsDetailBody(context),
    );
  }

  newsDetailBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(size, newsDetails.coverPage ?? ""),
          spacer20,
          title(newsDetails.newsTitle ?? ""),
          spacer20,
          date(newsDetails.newsDate ?? ""),
          spacer20,
          description(newsDetails.description ?? "")
        ],
      ),
    );
  }

  title(title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: SizeConfig.textSize(20), fontWeight: FontWeight.w600),
    );
  }

  date(date) {
    return Text(
      date,
      style: TextStyle(
          fontSize: SizeConfig.textSize(17), color: AppColors.grey600),
    );
  }

  description(desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        desc,
      ),
    );
  }

  image(Size size, String img) {
    return Container(
      height: size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(img),
        ),
      ),
    );
  }
}
