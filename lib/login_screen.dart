import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/theme_controller.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();

    return Obx((){
      print("theme controller => ${themeController.isDarkMode}");
      print("decoration input => ${Get.theme.inputDecorationTheme}");
      return Scaffold(
          appBar: AppBar(
            title: const Text("Connexion"),
            actions: [
              IconButton(
                icon: Icon(themeController.isDarkMode.value
                    ? Icons.light_mode
                    : Icons.dark_mode),
                onPressed: themeController.toggleTheme,
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Champ de texte Email
                TextField(
                  controller: emailController,
                  decoration: (const InputDecoration()).applyDefaults(Get.theme.inputDecorationTheme).copyWith(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email, color: Get.theme.primaryColor),
                      ),
                ),
                const SizedBox(height: 20),

                // Champ de texte Mot de passe
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: (const InputDecoration()).applyDefaults(Get.theme.inputDecorationTheme).copyWith(
                        labelText: "Mot de passe",
                        prefixIcon: Icon(Icons.lock, color: Get.theme.primaryColor),
                      ),
                ),
                const SizedBox(height: 30),

                // Bouton de connexion
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.snackbar(
                        "Connexion",
                        "Email: ${emailController.text}\nMot de passe: ${passwordController.text}",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    },
                    style: Get.theme.elevatedButtonTheme.style,
                    child: const Text("Se connecter"),
                  ),
                ),
              ],
            ),
          ),
        );
    });
  }
}
