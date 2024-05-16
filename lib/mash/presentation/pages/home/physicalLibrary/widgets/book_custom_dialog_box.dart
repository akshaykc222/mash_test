

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

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
            const Text(
              'Book Author',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: CachedNetworkImage(
                imageUrl: "https://d3nn873nee648n.cloudfront.net/HomeImages/Concept-and-Ideas.jpg?w=248&fit=crop&auto=format",
                fit: BoxFit.cover,
                 // height: 200,
                 // width: 80,
                placeholder: (BuildContext context, String url) => const Center(child: CircularProgressIndicator(),),
                errorWidget: (BuildContext context, String url, dynamic error) => const Icon(Icons.error),
              ),
            ),
            spacer20,
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Text('Language')),
                Text(' : '),
                Expanded(child: Text('books')),
              ],
            ),const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Text('Category')),
                Text(' : '),
                Expanded(
                    child: Text('books')),
              ],
            ),const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Text('Book Status')),
                Text(' : '),
                Expanded(child: Text('books')),
              ],
            ),const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Text('Volume')),
                Text(' : '),
                Expanded(child: Text('books')),
              ],
            ),const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Text('Published Year')),
                Text(' : '),
                Expanded(child: Text('books')),
              ],
            ),const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Text('Description')),
                Text(' : '),
                Expanded(child: Text('books')),
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