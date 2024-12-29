import 'dart:ui';

import 'package:flutter/material.dart';

abstract class ColorManager {
  static Color lightPrimaryColor = const Color(0xFF06004F);
  static Color lightOnPrimaryColor = const Color(0xFF004182);
  static Color lightSecondary = Colors.white;
  static Color lightOnSecondary = const Color(0xFF418299).withOpacity(0.6);
  static Color lightTertiary = Colors.white;
  static Color darkPrimaryColor = Colors.black;
  static Color darkOnPrimaryColor = Colors.black;
  static Color darkSecondary = Colors.black;
  static Color darkOnSecondary = Colors.black;
  static Color darkTertiary = Colors.black;
}
