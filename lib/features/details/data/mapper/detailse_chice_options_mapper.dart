import 'package:advanced_store/core/extension/extensions.dart';
import '../../presentation/model/detailse_chice_options_model.dart';
import '../response/detailse_chice_options_response.dart';

extension DetailseChoiceOptionsMapper
on DetailseChoiceOptionsResponse {
  DetailseChoiceOptionsModel toDomain() {
    return DetailseChoiceOptionsModel(
      name: name.onNull(),
      options: options.onNull(),
      title: title.onNull(),
    );
  }
}
