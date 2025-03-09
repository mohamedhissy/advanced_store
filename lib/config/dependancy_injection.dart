import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../features/auth/presentation/controller/auth_controller.dart';
import '../features/home/presentation/controller/home_controller.dart';
import '../features/splash/presentaion/controller/splash_controller.dart';

initModule() async{
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettingsSharedPreferences().initPreferences();
}

initSplash() {
  Get.put<SplashController>(SplashController());
}

disposeSplash() {
  Get.delete<SplashController>();
}

initAuth() {
  disposeSplash();
  Get.put<AuthController>(AuthController());
}

disposeAuth() {
  Get.delete<AuthController>();
}

initHome() {
  Get.put<HomeController>(HomeController());
  disposeSplash();
  disposeAuth();
}

disposeHome() {

}
//
// initSetting() {
//   disposeSplash();
//   Get.put<LocaleNotifierController>(LocaleNotifierController());
//   Get.put<ThemeController>(ThemeController());
// }
//
// disposeSetting() {
// }




