import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../../../../routes/routes.dart';

class SplashController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
  AppSettingsSharedPreferences();

  bool checkboxValue = false;

  void changeValue() {
    checkboxValue = !checkboxValue;
    update();
  }

  void toAuth(){
    Get.offAllNamed(Routes.loginView);
  }

  @override
  void onInit() {
    checkboxValue = true;
    super.onInit();
    Future.delayed(
        Duration(
          seconds: 2,
        ), () {
          // appSettingsSharedPreferences.clear();
      Get.offAllNamed(Routes.outBoardingView);
    });
  }
}
