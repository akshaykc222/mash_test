import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
