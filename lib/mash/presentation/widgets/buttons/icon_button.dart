import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';

import '../../utils/app_constants.dart';
import '../svg_asset_img.dart';

class CustomIconButton extends StatelessWidget {
  final String name;
  final String? icon;
  final VoidCallback onTap;
  final double? width;
  final Color? color;
  final double? elevation;
  const CustomIconButton(
      {super.key,
      required this.name,
      this.icon,
      this.elevation,
      required this.onTap,
      this.width,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(SizeUtility(context).width / 1.6, 45),
        elevation: elevation,
        backgroundColor: color,
      ),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          spacerWidth10,
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              color: color == Colors.white
                  ? AppColors.primaryColor
                  : AppColors.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          icon == null
              ? Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.primaryColor,
                  size: 16,
                )
              : const SizedBox(),
          icon == null || icon == ""
              ? const SizedBox()
              : assetFromSvg(
                  icon!,
                  color: color == Colors.white
                      ? AppColors.primaryColor
                      : AppColors.primaryColor,
                )
        ],
      ),
    );
  }
}
