import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFf7f7f7),
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Colors.black87,
  ),
  brightness: Brightness.light,
  buttonTheme: const ButtonThemeData(),
  colorSchemeSeed: const Color.fromRGBO(255, 189, 89, 1),
  textTheme: TextTheme(
    labelMedium: TextStyle(
      color: const ColorScheme.light().onBackground,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    headlineMedium: TextStyle(
      color: const ColorScheme.light().onBackground,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: const ColorScheme.light().onBackground,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    ),
  ),
);
