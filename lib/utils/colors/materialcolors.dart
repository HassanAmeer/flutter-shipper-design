import 'package:flutter/material.dart';

class MaterialColors {
  static const int maincolor = 0xff4338CA;
// Color(0xFF05003D)
  static const MaterialColor primaryColor = MaterialColor(
    maincolor,
    <int, Color>{
      50: Color(0xFFE2DFFF),
      100: Color(0xFFC3BEEE),
      200: Color(0xFF9891D1),
      300: Color(0xFF6A61AF),
      400: Color(0xFF4737B1),
      500: Color(maincolor),
      600: Color(0xFF322A94),
      700: Color(0xFF272074),
      800: Color(0xFF191450),
      900: Color(0xFF05003D),
    },
  );
}
