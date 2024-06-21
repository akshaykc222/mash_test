import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key,
      required this.onTap,
      required this.title,
      this.color,
      this.textColor});

  final String title;
  final VoidCallback onTap;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const StadiumBorder(),
        backgroundColor: color ?? AppColors.white,
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
