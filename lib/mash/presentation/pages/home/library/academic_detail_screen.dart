import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/drawer_widget.dart';

class AcademicDetailScreen extends StatelessWidget {
  const AcademicDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: commonAppbar(title: 'DYNAMIC'),
      body: academicDetailBody(),
    );
  }

  academicDetailBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return detailCard();
          }),
    );
  }

  detailCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CachedNetworkImage(
                imageUrl:
                    "https://d3nn873nee648n.cloudfront.net/HomeImages/Concept-and-Ideas.jpg?w=248&fit=crop&auto=format",
                fit: BoxFit.fill,
                // height: 50,
                // width: 50,
                placeholder: (BuildContext context, String url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget:
                    (BuildContext context, String url, dynamic error) =>
                        const Icon(Icons.error),
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Center(
              child: Text('books'),
            ),
          )
        ],
      ),
    );
  }
}
