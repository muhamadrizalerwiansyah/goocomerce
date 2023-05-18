import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../configs/colorSchemes.dart';

class ThemeStyle {
  TextTheme textThemeStyle() {
    return TextTheme(
        titleLarge: GoogleFonts.publicSans(
            textStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        )),
        titleMedium: GoogleFonts.publicSans(
            textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        )),
        bodyLarge: GoogleFonts.publicSans(
            textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        )),
        bodyMedium: GoogleFonts.publicSans(
            textStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        )),
        bodySmall: GoogleFonts.publicSans(
            textStyle: TextStyle(
                color: lightColorScheme.outline,
                fontSize: 12,
                fontWeight: FontWeight.w400)));
  }

  ElevatedButtonThemeData elevatedButtonThemeStyle() {
    return ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: colorPrimaryMain));
  }

  OutlinedButtonThemeData outlinedButtonThemeData() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          side: BorderSide(width: 1, color: colorPrimaryMain)),
    );
  }

  // theming for input decoration
  InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: lightColorScheme.error)),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: lightColorScheme.error),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: colorGrey400),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: colorGrey400),
        ),
        fillColor: lightColorScheme.background,
        labelStyle: TextStyle(
            color: lightColorScheme.outline,
            fontSize: 12,
            fontWeight: FontWeight.w400));
  }

  InputDecoration inputDecoration() {
    return InputDecoration(
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: lightColorScheme.error)),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: lightColorScheme.error),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: colorGrey400),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: colorGrey400),
        ),
        fillColor: lightColorScheme.background,
        labelStyle: TextStyle(
            color: lightColorScheme.outline,
            fontSize: 16,
            fontWeight: FontWeight.w500));
  }

  ChipThemeData chipThemedData() {
    return ChipThemeData();
    // return ChipThemeData.fromDefaults(
    //     primaryColor: colorPrimaryMain,
    //     secondaryColor: colorPrimaryMain,
    //     labelStyle:
    //         textThemeStyle().bodyMedium!.copyWith(color: colorPrimaryMain));
  }
}
