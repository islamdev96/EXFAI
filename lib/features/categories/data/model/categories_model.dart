class CategoriesModel {
  String? categoriesId;
  String? categoriesImage;
  String? categoriesDatetime;
  String? categoriesName;
  String? categoriesDescription;

  CategoriesModel(
      {this.categoriesId,
      this.categoriesImage,
      this.categoriesDatetime,
      this.categoriesName,
      this.categoriesDescription});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoriesImage = json['categories_image'];
    categoriesDatetime = json['categories_datetime'];
    categoriesName = json['categories_name'];
    categoriesDescription = json['categories_description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categories_id'] = categoriesId;
    data['categories_image'] = categoriesImage;
    data['categories_datetime'] = categoriesDatetime;
    data['categories_name'] = categoriesName;
    data['categories_description'] = categoriesDescription;
    return data;
  }
}
