import 'package:advanced_store/features/details/data/response/detailse_data_response.dart';

import '../../presentation/model/detailse_model.dart';
import 'package:advanced_store/core/extension/extensions.dart';
import 'package:advanced_store/features/details/data/mapper/detailse_data_mapper.dart';

import '../response/detailse_response.dart';
extension DetailsMapper on DetailsResponse {
    DetailsModel toDomain() {
      return DetailsModel(
        data: data!.map((e) => e.toDomain()).toList(),
          success: success.onNull(),
          status: status.onNull(),
          );
      }  }

