// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app1/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App {
  static const padding = 15.0;
  static const paddingHorizontal = 15.0;
  static const paddingVertical = 15.0;

  static ThemeData theme() {
    return ThemeData(
      brightness: Brightness.dark,
      backgroundColor: AppColors.dark,
      primarySwatch: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.dark,

      //AppBar
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: AppColors.dark,
        foregroundColor: AppColors.dark50,
      ),

      //BottomNavigationBar
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: AppColors.dark,
        unselectedItemColor: AppColors.dark50,
        selectedItemColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
      ),

      //Fonts
      fontFamily: GoogleFonts.roboto().fontFamily,

      //Input theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.dark80,
        prefixIconColor: AppColors.dark50,
        hintStyle: TextStyle(
          color: AppColors.dark50,
        ),
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
