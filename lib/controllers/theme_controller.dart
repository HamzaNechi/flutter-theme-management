import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class ThemeController extends GetxController {
  final _box = GetStorage();
  final isDarkMode = false.obs;

  @override
  void onInit() {
    isDarkMode.value = _box.read('isDarkMode') ?? false;
    super.onInit();
  }

  ThemeMode get theme => isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
    _box.write('isDarkMode', isDarkMode.value); // écrire dans le storage
  }
}
