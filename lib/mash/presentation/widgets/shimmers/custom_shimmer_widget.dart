import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerWidget extends StatelessWidget {
  final double? height;
  final double? width;
  const CustomShimmerWidget({super.key, required this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: height,
        width: width ?? double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Card(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            child: Row(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
