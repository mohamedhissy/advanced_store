import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../../../../routes/routes.dart';

class ProfileController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
  AppSettingsSharedPreferences();


  var pageSelectedIndex = 0.obs;


  void showEditDialog(BuildContext context) {
    TextEditingController usernameController =
    TextEditingController(text: appSettingsSharedPreferences.userName);

    Get.dialog(
      AlertDialog(
        title: Text("تعديل الاسم"),
        content: TextField(
          controller: usernameController,
          decoration: InputDecoration(
            labelText: "الاسم الجديد",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text("إلغاء"),
          ),
          TextButton(
            onPressed: () async {
              await updateUserName(usernameController.text);
              Get.back();
            },
            child: Text("حفظ"),
          ),
        ],
      ),
    );
  }

  Future<void> updateUserName(String newName) async {
    await appSettingsSharedPreferences.setUserName(newName); // Store persistently
    update(); // Refresh UI
  }

  void logOut(){
    appSettingsSharedPreferences.clear();
    Get.offAllNamed(Routes.loginView);

  }


  var isArrowForward = true.obs; // Tracks icon state
  var selectedWord = "Choose".obs; // Tracks selected word

  void toggleIcon() {
    isArrowForward.value = !isArrowForward.value; // Toggle icon
  }

  void selectWord(String word) {
    selectedWord.value = word; // Update selected word
    isArrowForward.value = true; // Reset icon after selection
  }


}
