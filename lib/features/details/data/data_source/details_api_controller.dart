import 'dart:convert';
import 'package:advanced_store/features/details/data/mapper/details_mapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../../../../core/constants.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../../../../core/widgets/helpers.dart';
import '../../presentation/model/detailse_model.dart';
import '../response/detailse_response.dart';


class DetailseApiController with Helpers {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
  AppSettingsSharedPreferences();


  Future get({
    required String endPoint,
    required Map<String, String> header,
  }) async {
    return await http.get(
      Uri.parse(endPoint),
      headers: header,
    );
  }

  Future<DetailsModel> detailse({required BuildContext context, required int productId}) async {
    http.Response response = await get(
      endPoint: ApiRequest.productDetails(productId),
      header: {},
    );

    int statusCode = response.statusCode;

    if (statusCode >= 200 && statusCode < 300) {
      var json = jsonDecode(response.body);

      return DetailsResponse.fromJson(json).toDomain();
    } else if (statusCode >= 400 && statusCode < 500) {
      var json = jsonDecode(response.body);
      return DetailsModel(
        data: [ ],
        success: json['success'],
        status: json['status'],
      );
    } else if (statusCode >= 500 && statusCode < 600) {
      return DetailsModel(
        data: [],
        success: false,
        status: 500,
      );
    }

    showSnackBar(
      context: context,
      message: 'Something Went Error',
      error: true,
    );
    return DetailsModel(
      data: [],
      success: false,
      status: 404,
    );
  }
}
