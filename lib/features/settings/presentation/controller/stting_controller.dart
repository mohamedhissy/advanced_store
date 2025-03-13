import 'package:advanced_store/core/resources/manager_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../../../../routes/routes.dart';

class SettingController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
  AppSettingsSharedPreferences();

  var pageSelectedIndex = 0.obs;



  var selectedCountry = ManagerStrings.country.obs; // For the first list
  var isArrowForwardCountry = true.obs;

  var selectedLanguage = ManagerStrings.language.obs; // For the second list
  var isArrowForwardLanguage = true.obs;

  var selectedGender = ManagerStrings.gender.obs; // Default selection
  var isArrowForwardGender = true.obs; // Icon state for gender list


  void toggleCountryIcon() {
    isArrowForwardCountry.value = !isArrowForwardCountry.value; // Toggle first list icon
  }

  void selectCountry(String country) {
    selectedCountry.value = country; // Update first list selection
    isArrowForwardCountry.value = true; // Reset icon
  }

  void toggleLanguageIcon() {
    isArrowForwardLanguage.value = !isArrowForwardLanguage.value; // Toggle second list icon
  }

  void selectLanguage(String language) {
    selectedLanguage.value = language; // Update second list selection
    isArrowForwardLanguage.value = true; // Reset icon
  }


  void toggleGenderIcon() {
    isArrowForwardGender.value = !isArrowForwardGender.value; // Toggle gender icon
  }


  void selectGender(String gender) {
    selectedLanguage.value = gender; // Update second list selection
    isArrowForwardLanguage.value = true; // Reset icon
  }

}
