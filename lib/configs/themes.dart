import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var textThemeStyle = TextTheme(
    titleLarge: GoogleFonts.poppins(
        textStyle: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Color(0xFF0A0A0A),
    )),
    titleMedium: GoogleFonts.poppins(
        textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color(0xFF0A0A0A),
    )),
    bodyLarge: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0A0A0A))),
    bodyMedium: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF0A0A0A))));

const MaterialColor mcolorscheme =
    MaterialColor(_mcolorschemePrimaryValue, <int, Color>{
  50: Color(0xFFE7F9F3),
  100: Color(0xFFC2F0E0),
  200: Color(0xFF99E6CC),
  300: Color(0xFF70DBB8),
  400: Color(0xFF52D4A8),
  500: Color(_mcolorschemePrimaryValue),
  600: Color(0xFF2EC791),
  700: Color(0xFF27C086),
  800: Color(0xFF20B97C),
  900: Color(0xFF14AD6B),
});
const int _mcolorschemePrimaryValue = 0xFF33CC99;

const MaterialColor mcolorschemeAccent =
    MaterialColor(_mcolorschemeAccentValue, <int, Color>{
  100: Color(0xFFE0FFF0),
  200: Color(_mcolorschemeAccentValue),
  400: Color(0xFF7AFFC0),
  700: Color(0xFF60FFB4),
});
const int _mcolorschemeAccentValue = 0xFFADFFD8;
