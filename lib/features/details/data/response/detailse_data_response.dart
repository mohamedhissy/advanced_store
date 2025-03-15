import 'detailse_brand_response.dart';
import 'detailse_chice_options_response.dart';
import 'detailse_photos_response.dart';
import 'detailse_response.dart';

class DetailseDataResponse {
  int? id;
  String? name;
  String? addedBy;
  int? sellerId;
  int? shopId;
  String? shopName;
  String? shopLogo;
  List<DetailsePhotosResponse>? photos;
  String? thumbnailImage;
  List<String>? tags;
  List<DetailseChoiceOptionsResponse>? choiceOptions;
  List<String>? colors;
  bool? hasDiscount;
  String? strokedPrice;
  String? mainPrice;
  int? calculablePrice;
  String? currencySymbol;
  int? currentStock;
  String? unit;
  int? rating;
  int? ratingCount;
  int? earnPoint;
  String? description;
  String? videoLink;
  DetailseBrandResponse? brand;
  String? link;

  DetailseDataResponse(
      {this.id,
        this.name,
        this.addedBy,
        this.sellerId,
        this.shopId,
        this.shopName,
        this.shopLogo,
        this.photos,
        this.thumbnailImage,
        this.tags,
        this.choiceOptions,
        this.colors,
        this.hasDiscount,
        this.strokedPrice,
        this.mainPrice,
        this.calculablePrice,
        this.currencySymbol,
        this.currentStock,
        this.unit,
        this.rating,
        this.ratingCount,
        this.earnPoint,
        this.description,
        this.videoLink,
        this.brand,
        this.link});

  DetailseDataResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    addedBy = json['added_by'];
    sellerId = json['seller_id'];
    shopId = json['shop_id'];
    shopName = json['shop_name'];
    shopLogo = json['shop_logo'];
    if (json['photos'] != null) {
      photos = <DetailsePhotosResponse>[];
      json['photos'].forEach((v) {
        photos!.add(new DetailsePhotosResponse.fromJson(v));
      });
    }
    thumbnailImage = json['thumbnail_image'];
    tags = json['tags'].cast<String>();
    if (json['choice_options'] != null) {
      choiceOptions = <DetailseChoiceOptionsResponse>[];
      json['choice_options'].forEach((v) {
        choiceOptions!.add(new DetailseChoiceOptionsResponse.fromJson(v));
      });
    }
    if (json['colors'] != null) {
      colors = List<String>.from(json['colors']);
    }
    hasDiscount = json['has_discount'];
    strokedPrice = json['stroked_price'];
    mainPrice = json['main_price'];
    calculablePrice = json['calculable_price'];
    currencySymbol = json['currency_symbol'];
    currentStock = json['current_stock'];
    unit = json['unit'];
    rating = json['rating'];
    ratingCount = json['rating_count'];
    earnPoint = json['earn_point'];
    description = json['description'];
    videoLink = json['video_link'];
    brand = json['brand'] != null
        ? new DetailseBrandResponse.fromJson(json['brand'])
        : null;
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['added_by'] = this.addedBy;
    data['seller_id'] = this.sellerId;
    data['shop_id'] = this.shopId;
    data['shop_name'] = this.shopName;
    data['shop_logo'] = this.shopLogo;
    if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    data['thumbnail_image'] = this.thumbnailImage;
    data['tags'] = this.tags;
    if (this.choiceOptions != null) {
      data['choice_options'] =
          this.choiceOptions!.map((v) => v.toJson()).toList();
    }
    if (this.colors != null) {
      data['colors'] = this.colors;
    }
    data['has_discount'] = this.hasDiscount;
    data['stroked_price'] = this.strokedPrice;
    data['main_price'] = this.mainPrice;
    data['calculable_price'] = this.calculablePrice;
    data['currency_symbol'] = this.currencySymbol;
    data['current_stock'] = this.currentStock;
    data['unit'] = this.unit;
    data['rating'] = this.rating;
    data['rating_count'] = this.ratingCount;
    data['earn_point'] = this.earnPoint;
    data['description'] = this.description;
    data['video_link'] = this.videoLink;
    if (this.brand != null) {
      data['brand'] = this.brand!.toJson();
    }
    data['link'] = this.link;
    return data;
  }
}
