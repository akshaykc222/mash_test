import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';

class StudentProfileWidget extends StatelessWidget {
  final VoidCallback onTap;
  const StudentProfileWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        // padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
            elevation: 2,
            surfaceTintColor: AppColors.primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/student_dummy.png'),
                      ),
                      spacerWidth10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rahul Balakrishnan',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.black,
                            ),
                          ),
                          const Text(
                            '3B',
                          ),
                        ],
                      ),
                      spacerWidth30,
                    ],
                  ),

                  Positioned(
                    right: 55,
                    // left: 0,
                    bottom: 0,
                    top: 0,
                    child: _buildRoundedImage(),
                  ),
                  Positioned(
                    right: 45,
                    bottom: 0,
                    top: 0,
                    child: _buildRoundedImage(),
                  ),
                  // _buildRoundedImage
                  Positioned(
                    right: 30,
                    bottom: 0,
                    top: 0,
                    child: _buildRoundedImage(),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget _buildRoundedImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.white,
                width: 3,
              ),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/student_dummy.png',
                  ))),
        ));
  }
}
