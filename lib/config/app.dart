// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App {
  static const primary = 0xffD17842;
  static const secondary = 0xFF40474F;
  static const dark = 0xFF0C0F14;
  static const dark80 = 0xFF141921;
  static const dark50 = 0xFF3E4652;

  //Padding
  static const padding = 15.0;
  static const paddingHorizontal = 15.0;
  static const paddingVertical = 15.0;

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

  static ThemeData theme() {
    return ThemeData(
      brightness: Brightness.dark,
      backgroundColor: Color(dark),
      primarySwatch: primaryColor,
      scaffoldBackgroundColor: Color(App.dark),

      //AppBar
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Color(dark),
        foregroundColor: Color(dark50),
      ),

      //BottomNavigationBar
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: Color(dark),
        unselectedItemColor: Color(dark50),
        selectedItemColor: primaryColor,
        type: BottomNavigationBarType.fixed,
      ),

      //Fonts
      fontFamily: GoogleFonts.roboto().fontFamily,

      //Input theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Color(dark80),
        prefixIconColor: Color(dark50),
        hintStyle: TextStyle(color: Color(dark50)),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(18),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
