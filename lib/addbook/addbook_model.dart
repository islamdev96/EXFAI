class AddBookModel {
  String? addbookId;
  String? addbookTitle;
  String? addbookDescription;
  String? addbookAuthor;
  String? addbookCity;
  String? addbookPrice;
  String? addbookImage;
  String? addbookCommunication;
  String? addbookCount;
  String? addbookActive;
  String? addbookDiscount;
  String? addbookDate;
  String? addbookCategoriesid;
  String? categoriesId;
  String? categoriesImage;
  String? categoriesDatetime;
  String? categoriesName;
  String? categoriesNamaAr;

  AddBookModel(
      {this.addbookId,
      this.addbookTitle,
      this.addbookDescription,
      this.addbookAuthor,
      this.addbookCity,
      this.addbookPrice,
      this.addbookImage,
      this.addbookCommunication,
      this.addbookCount,
      this.addbookActive,
      this.addbookDiscount,
      this.addbookDate,
      this.addbookCategoriesid,
      this.categoriesId,
      this.categoriesImage,
      this.categoriesDatetime,
      this.categoriesName,
      this.categoriesNamaAr});

  AddBookModel.fromJson(Map<String, dynamic> json) {
    addbookId = json['addbook_id'];
    addbookTitle = json['addbook_title'];
    addbookDescription = json['addbook_description'];
    addbookAuthor = json['addbook_author'];
    addbookCity = json['addbook_city'];
    addbookPrice = json['addbook_price'];
    addbookImage = json['addbook_image'];
    addbookCommunication = json['addbook_communication'];
    addbookCount = json['addbook_count'];
    addbookActive = json['addbook_active'];
    addbookDiscount = json['addbook_discount'];
    addbookDate = json['addbook_date'];
    addbookCategoriesid = json['addbook_categoriesid'];
    categoriesId = json['categories_id'];
    categoriesImage = json['categories_image'];
    categoriesDatetime = json['categories_datetime'];
    categoriesName = json['categories_name'];
    categoriesNamaAr = json['categories_nama_ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['addbook_id'] = addbookId;
    data['addbook_title'] = addbookTitle;
    data['addbook_description'] = addbookDescription;
    data['addbook_author'] = addbookAuthor;
    data['addbook_city'] = addbookCity;
    data['addbook_price'] = addbookPrice;
    data['addbook_image'] = addbookImage;
    data['addbook_communication'] = addbookCommunication;
    data['addbook_count'] = addbookCount;
    data['addbook_active'] = addbookActive;
    data['addbook_discount'] = addbookDiscount;
    data['addbook_date'] = addbookDate;
    data['addbook_categoriesid'] = addbookCategoriesid;
    data['categories_id'] = categoriesId;
    data['categories_image'] = categoriesImage;
    data['categories_datetime'] = categoriesDatetime;
    data['categories_name'] = categoriesName;
    data['categories_nama_ar'] = categoriesNamaAr;
    return data;
  }
}
