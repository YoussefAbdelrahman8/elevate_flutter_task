import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_manager.dart';

abstract class ThemeManager {
  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
          bodyMedium: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: const Color(0xFF06004F),
      )),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          primary: ColorManager.lightPrimaryColor,
          secondary: ColorManager.lightSecondary,
          onPrimary: ColorManager.lightOnPrimaryColor,
          onSecondary: ColorManager.lightOnSecondary,
          tertiary: ColorManager.lightTertiary));
  static ThemeData darkTheme = ThemeData(
      textTheme: const TextTheme(),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: ColorManager.darkPrimaryColor,
          secondary: ColorManager.darkSecondary,
          onPrimary: ColorManager.darkOnPrimaryColor,
          onSecondary: ColorManager.darkOnSecondary,
          tertiary: ColorManager.darkTertiary));
}
