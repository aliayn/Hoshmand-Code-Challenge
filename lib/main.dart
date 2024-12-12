import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hoshmand_code_challenge/core/locale/app_translation.dart';
import 'package:hoshmand_code_challenge/core/router/routes.dart';
import 'package:hoshmand_code_challenge/core/service/app_service.dart';
import 'package:hoshmand_code_challenge/core/theme/theme_config.dart';

Future<void> main() async {
  await AppService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
        locale: const Locale('en'),
        translationsKeys: AppTranslation.keys,
        theme: lightTheme,
        themeMode: ThemeMode.light,
      );
}
