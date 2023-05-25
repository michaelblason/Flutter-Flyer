import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appTheme = ThemeData(
  fontFamily: GoogleFonts.cabin().fontFamily,
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Colors.black87,
  ),
  brightness: Brightness.light,
  buttonTheme: const ButtonThemeData(),
  colorSchemeSeed: const Color(0xFFE2792E),
);
