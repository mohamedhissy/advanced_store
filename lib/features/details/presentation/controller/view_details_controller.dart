import 'package:advanced_store/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../routes/routes.dart';
import '../../data/data_source/details_api_controller.dart';
import '../model/detailse_model.dart';
import '../model/detailse_photos_model.dart';

class DetailseController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
  AppSettingsSharedPreferences();
  DetailsModel productDetailsModel = DetailsModel(data: [], success: true, status: 200);
  DetailseApiController detailseApiController = DetailseApiController();

  var isMale = true.obs;
  var pageSelectedIndex = 2.obs;
  var currentPageIndex = 0.obs;


  void changeMale(int index) {
    isMale.value = index == 0;
  }

  void onInit() {
    super.onInit();
  }

  readDetailse(int productID, BuildContext context,) async {
    productDetailsModel = await detailseApiController.detailse(context: Get.context!, productId: productID);
    Navigator.pushNamed(context, Routes.detailsView);

    update();
  }

  // String productPrice(String price, String unit) {
  //   return '\$ $price \\$unit'.toUpperCase();
  // }

  productDetails(
      BuildContext context,
      int productId,
      String productImg,
      String productName,
      int productPrice,
      List<DetailsePhotosModel> photos,
      String unit) {
    productDetailsModel.data.first.id = productId;
    productDetailsModel.data.first.thumbnailImage = productImg;
    productDetailsModel.data.first.name = productName;
    productDetailsModel.data.first.calculablePrice = productPrice;
    productDetailsModel.data.first.photos = photos;
    productDetailsModel.data.first.unit = unit;
    Navigator.pushNamed(context, Routes.detailsView);
  }


  //// هادي الدالة للبروقويس
  void onPageChanged(int index) {
    currentPageIndex.value = index;
  }

  //
  var selectedValue = ManagerStrings.size.obs;
  void changeValue(String newValue) {
    selectedValue.value =newValue;
  }

  final List<String> items = [
    ManagerStrings.size,
    "S",
    "M",
    "L",
    "XL",
    "XXL",
  ];

}
