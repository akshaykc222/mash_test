import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData get mainTheme => ThemeData(
      textTheme: GoogleFonts.montserratTextTheme(),
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
