import 'package:advanced_store/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/resources/manager_strings.dart';
import '../../../../routes/routes.dart';
import '../../data/data_source/home_api_controller.dart';
import '../model/home_model.dart';

class HomeController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
      AppSettingsSharedPreferences();
  HomeModel homeModel = HomeModel(data: [], success: true, status: 200);
  HomeApiController homeApiController = HomeApiController();

  var isMale = true.obs;
  var pageSelectedIndex = 2.obs;
  var currentPageIndex = 0.obs;
  // double visibleLetters = 20;



  void changeMale(int index) {
    isMale.value = index == 0;
  }

  void onInit() {
    super.onInit();
    readHome();
  }

  readHome() async {
    homeModel = await homeApiController.home(context: Get.context!);
    update();
  }

  String productPrice(String price, String unit) {
    return '\$ $price \\$unit'.toUpperCase();
  }

  productDetails(BuildContext context, int productId, String productImg,
      String productName, double productPrice) {
    homeModel.data.first.id = productId;
    homeModel.data.first.thumbnailImage = productImg;
    homeModel.data.first.name = productName;
    homeModel.data.first.basePrice = productPrice;
    Navigator.pushNamed(context, Routes.detailsView);
  }

  final Map<int, String> routes = {
    0: Routes.cartView,
    1: Routes.brandView,
    2: Routes.homeView,
    3: Routes.settingView,
    4: Routes.profileView, // Profile tab
  };

  void navigateToScreen(int index) {
    pageSelectedIndex.value = index;

    Get.toNamed(routes[index]!);
  }

 //// هادي الدالة للبروقويس
  void onPageChanged(int index) {
    currentPageIndex.value = index;
  }

  void changeValue(String newValue) {
    selectedValue.value =newValue;
    }
  var selectedValue = ManagerStrings.size.obs;
  final List<String> items = [
  ManagerStrings.size,
  "S",
  "M",
  "L",
  "XL",
  "XXL",
  ];

}
