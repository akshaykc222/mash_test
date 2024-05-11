

import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class CommonSmallButton extends StatelessWidget {
  const CommonSmallButton({super.key,required this.onPress,required this.title,required this.prefixIcon});
  final VoidCallback onPress;
  final String title;
  final IconData prefixIcon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor
      ),
      icon: Icon(prefixIcon),
        onPressed: onPress, label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Text(title),
        ) );
  }
}
