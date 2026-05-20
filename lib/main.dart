import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/routes/app_routes.dart';
import 'core/theme/app_theme.dart';
import 'core/translations/app_translations.dart';

import 'features/main/screens/main_screen.dart';
import 'features/splash/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const KaryaApp());
}

class KaryaApp extends StatelessWidget {
  const KaryaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Karya',

      theme: AppTheme.darkTheme,

      translations: AppTranslations(),

      locale: const Locale('ar', 'SA'),
      fallbackLocale: const Locale('en', 'US'),

      initialRoute: AppRoutes.splash,

      getPages: [
        GetPage(
          name: AppRoutes.splash,
          page: () => const SplashScreen(),
        ),

        GetPage(
          name: AppRoutes.main,
          page: () => const MainScreen(),
        ),
      ],
    );
  }
}