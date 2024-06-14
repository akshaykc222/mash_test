import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.onTap, required this.title});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
      ),
      onPressed: onTap,
      child: Text(title,style: TextStyle(color: AppColors.primaryColor),),
    );
  }
}
