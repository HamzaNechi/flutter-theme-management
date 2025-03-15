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
      return Scaffold(
        resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: const Text("Connexion"),
            actions: [
              IconButton(
                icon: Icon(themeController.isDarkMode.value
                    ? Icons.light_mode
                    : Icons.dark_mode),
                onPressed:themeController.toggleTheme,
              ),
            ],
          ),
          body: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 150, // Force la hauteur à être au moins celle de l'écran
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Maintenant ça fonctionnera
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Image 
                      Obx(() {
                        return SizedBox(
                          width: 250,
                          height: 250,
                          child: themeController.isDarkMode.value 
                            ? Image.asset("assets/login_dark.png") 
                            : Image.asset("assets/login_light.png"),
                        );
                      }),
                      const SizedBox(height: 40),

                      // Champ de texte Email
                      TextField(
                        controller: emailController,
                        decoration: (const InputDecoration()).applyDefaults(Theme.of(context).inputDecorationTheme).copyWith(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email, color: Get.theme.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Champ de texte Mot de passe
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: (const InputDecoration()).applyDefaults(Theme.of(context).inputDecorationTheme).copyWith(
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
                          style: Theme.of(context).elevatedButtonTheme.style,
                          child: const Text("Se connecter"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

        );
    });
  }
}
