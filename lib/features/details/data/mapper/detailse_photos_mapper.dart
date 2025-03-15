import 'package:advanced_store/core/extension/extensions.dart';
import '../../presentation/model/detailse_photos_model.dart';
import '../response/detailse_photos_response.dart';


extension DetailsPhotoMapper on DetailsePhotosResponse {
  DetailsePhotosModel toDomain() {
    return DetailsePhotosModel(
      variant: variant.onNull(),
      path: path.onNull(),
    );
  }
}
