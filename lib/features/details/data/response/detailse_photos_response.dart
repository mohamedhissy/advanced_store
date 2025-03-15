class DetailsePhotosResponse {
  String? variant;
  String? path;

  DetailsePhotosResponse({this.variant, this.path});

  DetailsePhotosResponse.fromJson(Map<String, dynamic> json) {
    variant = json['variant'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['variant'] = this.variant;
    data['path'] = this.path;
    return data;
  }
}
