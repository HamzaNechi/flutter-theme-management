import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_manager/login_screen.dart';
import 'controllers/theme_controller.dart';
import 'theme.dart';

void main() {
  final themeController= Get.put(ThemeController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: themeController.theme, // Utiliser le ThemeController pour gérer le mode
      theme: lightTheme, // Light mode
      darkTheme: darkTheme, // Dark mode
      home: LoginScreen(),
    ),
  );
}

