import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/theme_controller.dart';

class HomeScreen extends GetView {


  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Theme Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thème Actuel", style: Get.textTheme.bodyLarge),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: themeController.toggleTheme,
              child: Text("Changer de Thème"),
            ),
          ],
        ),
      ),
    );
  }
}
