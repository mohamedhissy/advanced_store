class DetailseChoiceOptionsResponse {
  String? name;
  String? title;
  List<String>? options;

  DetailseChoiceOptionsResponse({this.name, this.title, this.options});

  DetailseChoiceOptionsResponse.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    options = json['options'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['title'] = this.title;
    data['options'] = this.options;
    return data;
  }
}
