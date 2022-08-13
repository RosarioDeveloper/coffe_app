import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xffD17842);
  static const Color primary2 = Color(0xFFBD5B1E);
  static const Color secondary = Color(0xFF40474F);
  static const Color dark = Color(0xFF0C0F14);
  static const Color dark80 = Color(0xFF141921);
  static const Color dark50 = Color(0xFF3E4652);
  static const Color dark30 = Color(0xFF76859C);

  static const MaterialColor primaryColor = MaterialColor(
    0xffD17842, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffD17842), //10%
      100: Color(0xffb74c3a), //20%
      200: Color(0xffa04332), //30%
      300: Color(0xff89392b), //40%
      400: Color(0xff733024), //50%
      500: Color(0xff5c261d), //60%
      600: Color(0xff451c16), //70%
      700: Color(0xff2e130e), //80%
      800: Color(0xff170907), //90%
      900: Color(0xff000000), //100%
    },
  );
}
