import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class AppThemes {
  static ThemeData get mainTheme => ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      fontFamily: 'SofiPro',
      // textTheme: GoogleFonts.montserratTextTheme(),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.primaryColor,
        ),
      )
      // fontFamily: GoogleFonts.montserrat().fontFamily
      );
  ThemeData get darkTheme => ThemeData(
      inputDecorationTheme:
          const InputDecorationTheme(border: UnderlineInputBorder()));
  ThemeData get lightTheme => ThemeData();
}
