import 'package:get/get.dart';

class AppController extends GetxController {
  final selectedRole = 'rider'.obs;
  final isDarkMode = true.obs;
  final language = 'ar'.obs;

  void setRole(String role) => selectedRole.value = role;
  void toggleTheme() => isDarkMode.value = !isDarkMode.value;
  void setLanguage(String lang) => language.value = lang;
}