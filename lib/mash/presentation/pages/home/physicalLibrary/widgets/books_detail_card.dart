

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/home/physicalLibrary/widgets/book_custom_dialog_box.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/buttons/default_button.dart';

class BookDetailCard extends StatelessWidget {
  const BookDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CachedNetworkImage(
                imageUrl: "https://d3nn873nee648n.cloudfront.net/HomeImages/Concept-and-Ideas.jpg?w=248&fit=crop&auto=format",
                fit: BoxFit.fill,
                // height: 50,
                // width: 50,
                placeholder: (BuildContext context, String url) => const Center(child: CircularProgressIndicator(),),
                errorWidget: (BuildContext context, String url, dynamic error) => const Icon(Icons.error),
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Center(
              child: Text('books',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: DefaultButton(onTap: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const CustomDialog();
                  },
                );
              }, title: 'VIEW'),
            ),
          ),
          spacer7
        ],
      ),
    );
  }
}
