import '../../presentation/model/detailse_brand_model.dart';
import '../response/detailse_brand_response.dart';
import 'package:advanced_store/core/extension/extensions.dart';

extension DetailseBrandMapper on DetailseBrandResponse {
  DetailseBrandModel toDomain() {
    return DetailseBrandModel(
      id: id.onNull(),
      name: name.onNull(),
      logo: logo.onNull(),
    );
  }
}
