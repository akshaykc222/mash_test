import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

PreferredSize commonAppbar({required String title}) => PreferredSize(
      preferredSize: const Size(double.infinity, 60),
      child: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            fontSize: SizeConfig.textSize(18),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
