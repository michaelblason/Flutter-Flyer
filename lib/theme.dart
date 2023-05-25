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
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF0275d8),
    onPrimary: Color(0xFF505050),
    secondary: Color(0xFF292b2c),
    onSecondary: Color(0xFF505050),
    error: Color(0xFFF32424),
    onError: Color(0xFFF32424),
    background: Color(0xFFf7f7f7),
    onBackground: Color(0xFFf7f7f7),
    surface: Color(0xFF505050),
    onSurface: Color(0xFF505050),
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      color: Color(0xFF505050),
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
);
