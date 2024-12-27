import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color lightPrimaryColor = Color(0xFF06004F);
  static Color lightOnPrimaryColor = Color(0xFF004182);
  static Color lightSecondary = Colors.white;
  static Color lightOnSecondary = const Color(0xFF418299).withOpacity(0.6);
  static Color lightTertiary = Colors.white;
  static Color darkPrimaryColor = Colors.black;
  static Color darkOnPrimaryColor = Colors.black;
  static Color darkSecondary = Colors.black;
  static Color darkOnSecondary = Colors.black;
  static Color darkTertiary = Colors.black;

  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
          bodyMedium: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF06004F),
      )),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          primary: lightPrimaryColor,
          secondary: lightSecondary,
          onPrimary: lightOnPrimaryColor,
          onSecondary: lightOnSecondary,
          tertiary: lightTertiary));
  static ThemeData darkTheme = ThemeData(
      textTheme: const TextTheme(),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: darkPrimaryColor,
          secondary: darkSecondary,
          onPrimary: darkOnPrimaryColor,
          onSecondary: darkOnSecondary,
          tertiary: darkTertiary));
}
