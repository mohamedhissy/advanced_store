import 'package:advanced_store/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/dependancy_injection.dart';
import 'core/resources/manager_colors.dart';
import 'features/settings/presentation/controller/theme_controller.dart';

void main() async {
  await initModule();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
   MyApp({super.key});

  final ThemeController themeController =
  Get.put<ThemeController>(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:
      themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: ManagerColors.white,
            foregroundColor: ManagerColors.black,
          )),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: ManagerColors.transparent,
            foregroundColor: ManagerColors.white,
          )
      ),

      initialRoute: Routes.splashScreen,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
