// ignore_for_file: file_names

class CitiesModel {
  String? citiesId;
  String? citiesName;

  CitiesModel({this.citiesId, this.citiesName});

  CitiesModel.fromJson(Map<String, dynamic> json) {
    citiesId = json['cities_id'];
    citiesName = json['cities_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cities_id'] = citiesId;
    data['cities_name'] = citiesName;
    return data;
  }
}
