import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get mainTheme => ThemeData(
      fontFamily: 'SofiPro',
      // textTheme: GoogleFonts.montserratTextTheme(),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            foregroundColor: Colors.white,
            backgroundColor: Colors.purple),
      )
      // fontFamily: GoogleFonts.montserrat().fontFamily
      );
  ThemeData get darkTheme => ThemeData(
      inputDecorationTheme:
          const InputDecorationTheme(border: UnderlineInputBorder()));
  ThemeData get lightTheme => ThemeData();
}
