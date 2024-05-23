import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class StudentSwitchShimmer extends StatelessWidget {
  const StudentSwitchShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor:
                            Colors.white, // Dummy background color for shimmer
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100, // Adjust the width as needed
                            height: 16,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 5),
                          Container(
                            width: 50,
                            height: 14,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      for (int i = 0; i < 3; i++)
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: i * 20.0),
                          color: Colors.white,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
