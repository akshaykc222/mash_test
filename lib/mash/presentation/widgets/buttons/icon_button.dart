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
  const CustomIconButton(
      {super.key,
      required this.name,
      this.icon,
      required this.onTap,
      this.width});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(SizeUtility(context).width / 2, 45),
        elevation: 2,
        backgroundColor: AppColors.white,
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
              color: AppColors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          icon == null
              ? Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.primaryColor,
                  size: 16,
                )
              : const SizedBox(),
          icon != null
              ? assetFromSvg(
                  icon!,
                  color: AppColors.black,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
