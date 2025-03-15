import 'package:advanced_store/features/details/data/mapper/detailse_brand_mapper.dart';
import 'package:advanced_store/features/details/data/mapper/detailse_chice_options_mapper.dart';
import 'package:advanced_store/features/details/data/mapper/detailse_photos_mapper.dart';

import '../../presentation/model/detailse_data_model.dart';
import 'package:advanced_store/core/extension/extensions.dart';
import '../response/detailse_data_response.dart';

extension DetailsDataMapper on DetailseDataResponse {
  DetailseDataModel toDomain() {
    return DetailseDataModel(
        id: id.onNull(),
        name: name.onNull(),
        addedBy: addedBy.onNull(),
        sellerId: sellerId.onNull(),
        shopId: shopId.onNull(),
        shopName: shopName.onNull(),
        shopLogo: shopLogo.onNull(),
        photos: photos!.map((e) => e.toDomain()).toList(),
        thumbnailImage: thumbnailImage.onNull(),
        tags: tags.onNull(),
        choiceOptions: choiceOptions!.map((e) => e.toDomain()).toList(),
        colors: colors.onNull(),
        hasDiscount: hasDiscount.onNull(),
        strokedPrice: strokedPrice.onNull(),
        mainPrice: mainPrice.onNull(),
        calculablePrice: calculablePrice.onNull(),
        currencySymbol: currencySymbol.onNull(),
        currentStock: currentStock.onNull(),
        unit: unit.onNull(),
        rating: rating.onNull(),
        ratingCount: ratingCount.onNull(),
        earnPoint: earnPoint.onNull(),
        description: description.onNull(),
        videoLink: videoLink.onNull(),
        link: link.onNull(),
        brand: brand!.toDomain(),
        );  }
}
