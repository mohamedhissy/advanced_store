import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../../../../routes/routes.dart';

class AuthController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
  AppSettingsSharedPreferences();

  bool checkboxValue = false;
  bool showPassword = true;
  bool showConfirmPassword = true;


  void changeCheckBoxValue() {
    checkboxValue = !checkboxValue;
    update();
  }

  changePasswordVisibility(){
    showPassword = !showPassword;
    update();
  }

  changeConfirmPasswordVisibility(){
    showConfirmPassword = !showConfirmPassword;
    update();
  }


  void toAuth(){
    Get.offAllNamed(Routes.loginView);
  }

}
