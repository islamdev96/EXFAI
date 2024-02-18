class AddBookModel {
  String? addbookId;
  String? addbookTitle;
  String? addbookDescription;
  String? addbookAuthor;
  String? addbookCity;
  String? addbookPrice;
  String? addbookImage;
  String? addbookCommunication;
  String? addbookDate;
  String? addbookCategoriesid;

  AddBookModel(
      {this.addbookId,
      this.addbookTitle,
      this.addbookDescription,
      this.addbookAuthor,
      this.addbookCity,
      this.addbookPrice,
      this.addbookImage,
      this.addbookCommunication,
      this.addbookDate,
      this.addbookCategoriesid});

  AddBookModel.fromJson(Map<String, dynamic> json) {
    addbookId = json['addbook_id'];
    addbookTitle = json['addbook_title'];
    addbookDescription = json['addbook_description'];
    addbookAuthor = json['addbook_author'];
    addbookCity = json['addbook_city'];
    addbookPrice = json['addbook_price'];
    addbookImage = json['addbook_image'];
    addbookCommunication = json['addbook_communication'];
    addbookDate = json['addbook_date'];
    addbookCategoriesid = json['addbook_categoriesid'];
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
    data['addbook_date'] = addbookDate;
    data['addbook_categoriesid'] = addbookCategoriesid;
    return data;
  }
}
