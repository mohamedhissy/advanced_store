import 'package:advanced_store/features/details/presentation/model/detailse_brand_model.dart';
import 'package:advanced_store/features/details/presentation/model/detailse_chice_options_model.dart';
import 'package:advanced_store/features/details/presentation/model/detailse_photos_model.dart';

import '../../data/response/detailse_brand_response.dart';
import '../../data/response/detailse_chice_options_response.dart';
import '../../data/response/detailse_photos_response.dart';

class DetailseDataModel {
  int id;
  String name;
  String addedBy;
  int sellerId;
  int shopId;
  String shopName;
  String shopLogo;
  List<DetailsePhotosModel> photos;
  String thumbnailImage;
  List<String> tags;
  List<DetailseChoiceOptionsModel> choiceOptions;
  List<String> colors;
  bool hasDiscount;
  String strokedPrice;
  String mainPrice;
  int calculablePrice;
  String currencySymbol;
  int currentStock;
  String unit;
  int rating;
  int ratingCount;
  int earnPoint;
  String description;
  String videoLink;
  DetailseBrandModel brand;
  String link;

  DetailseDataModel(
      {required this.id,
       required this.name,
       required this.addedBy,
       required this.sellerId,
       required this.shopId,
       required this.shopName,
       required this.shopLogo,
       required this.photos,
       required this.thumbnailImage,
       required this.tags,
       required this.choiceOptions,
       required this.colors,
       required this.hasDiscount,
       required this.strokedPrice,
       required this.mainPrice,
       required this.calculablePrice,
       required this.currencySymbol,
       required this.currentStock,
       required this.unit,
       required this.rating,
       required this.ratingCount,
       required this.earnPoint,
       required this.description,
       required this.videoLink,
       required this.brand,
       required this.link});
   }
