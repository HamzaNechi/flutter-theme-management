import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFF6200EE),
  primaryColorDark: Color(0xFF3700B3),
  secondaryHeaderColor: Color(0xFF03DAC6),
  scaffoldBackgroundColor: Color(0xFFFFFFFF),
  colorScheme: ColorScheme.light(
    primary: Color(0xFF6200EE),
    secondary: Color(0xFF03DAC6),
    error: Color(0xFFB00020),
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
    titleLarge: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    labelStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Color(0xFF6200EE)),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF6200EE),
      foregroundColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xFF3700B3),
  primaryColorDark: Color(0xFF6200EE),
  secondaryHeaderColor: Color(0xFF018786),
  scaffoldBackgroundColor: Color(0xFF121212),
  colorScheme: ColorScheme.dark(
    primary: Color(0xFF3700B3),
    secondary: Color(0xFF018786),
    error: Color(0xFFCF6679),
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
    titleLarge: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFF333333),
    labelStyle: TextStyle(color: Colors.white),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Color(0xFF03DAC6)),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF03DAC6),
      foregroundColor: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
);









