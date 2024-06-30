import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xff3ac4ac),
      fontFamily: "IndieFlower",
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.grey[100],
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 22,
              fontFamily: 'IndieFlower'),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        hintStyle: const TextStyle(
          fontSize: 16,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.black)),
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey[100],
        textStyle: const TextStyle(
            fontSize: 16, fontFamily: 'IndieFlower', color: Colors.black),
      )),
      cardColor: Colors.grey.shade200,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: Colors.red),
      textTheme: const TextTheme(
          displayLarge: TextStyle(
              letterSpacing: -1.5,
              fontSize: 75,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          displayMedium: TextStyle(
              letterSpacing: -1.0,
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          displaySmall: TextStyle(
              fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(
              letterSpacing: -1.0,
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w600),
          headlineSmall: TextStyle(
              letterSpacing: -1.0,
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500),
          titleLarge: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
          titleMedium: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
          titleSmall: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
          labelLarge: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
          bodySmall: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
          labelSmall: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.5)));

  static ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xff658af7),
    fontFamily: "IndieFlower",
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black87,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
          color: Colors.grey.shade100,
          fontWeight: FontWeight.w600,
          fontSize: 22,
          fontFamily: 'IndieFlower'),
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        hintStyle: const TextStyle(
          fontSize: 16,
        )),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.white)),
      shadowColor: Colors.transparent,
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      textStyle: const TextStyle(
          fontFamily: 'IndieFlower', fontSize: 16, color: Colors.white),
    )),
    cardColor: Colors.grey.shade700,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.white),
    textTheme: TextTheme(
        displayLarge: TextStyle(
            letterSpacing: -1.5,
            fontSize: 75,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            letterSpacing: -1.0,
            fontSize: 40,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        displaySmall: TextStyle(
            letterSpacing: -1.0,
            fontSize: 28,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            letterSpacing: -1.0,
            color: Colors.grey.shade50,
            fontSize: 28,
            fontWeight: FontWeight.w200),
        headlineSmall: TextStyle(
            letterSpacing: -1.0,
            color: Colors.grey.shade50,
            fontSize: 24,
            fontWeight: FontWeight.w500),
        titleLarge: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 24,
            fontWeight: FontWeight.w500),
        titleMedium: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 17,
            fontWeight: FontWeight.w500),
        titleSmall: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 14,
            fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 14,
            fontWeight: FontWeight.w400),
        labelLarge: const TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
        bodySmall: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 12,
            fontWeight: FontWeight.w500),
        labelSmall: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 10,
            fontWeight: FontWeight.w400)),
    bottomAppBarTheme: BottomAppBarTheme(color: Colors.grey.shade900),
  );
}
