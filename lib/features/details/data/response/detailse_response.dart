import 'detailse_data_response.dart';

class DetailsResponse {
  List<DetailseDataResponse>? data;
  bool? success;
  int? status;

  DetailsResponse({this.data, this.success, this.status});

  DetailsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DetailseDataResponse>[];
      json['data'].forEach((v) {
        data!.add(new DetailseDataResponse.fromJson(v));
      });
    }
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }
}




