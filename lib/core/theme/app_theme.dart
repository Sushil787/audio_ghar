import 'package:audio_ghar/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = lightTheme();

ThemeData lightTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: LightColor.orange,
    scaffoldBackgroundColor: LightColor.whiteColor,
    brightness: Brightness.light,
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.only(bottom: 5, left: 5),
      focusColor: LightColor.grey,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: LightColor.orange, width: 2),
      ),
      outlineBorder: BorderSide(color: LightColor.grey),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    textTheme: _textTheme,
  );
}

TextTheme _textTheme = const TextTheme(
  headlineLarge: TextStyle(
    color: LightColor.secondaryColor,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ),
  headlineMedium: TextStyle(
    color: LightColor.secondaryColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
  headlineSmall: TextStyle(
    color: LightColor.secondaryColor,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  ),
  bodyLarge: TextStyle(
    color: LightColor.secondaryColor,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  ),
  bodyMedium: TextStyle(
    color: LightColor.secondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
  bodySmall: TextStyle(
    color: LightColor.secondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
  titleSmall: TextStyle(
    color: LightColor.secondaryColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
  titleMedium: TextStyle(
    color: LightColor.secondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
  titleLarge: TextStyle(
    color: LightColor.secondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
  displayMedium: TextStyle(
    fontSize: 14,
    color: LightColor.secondaryColor,
    fontWeight: FontWeight.w600,
  ),
  displaySmall: TextStyle(
    fontSize: 12,
    color: LightColor.secondaryColor,
    fontWeight: FontWeight.w500,
  ),
);
