class MyFavoriteModel {
  String? favoriteId;
  String? favoriteUsersid;
  String? favoriteAddbookid;
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
  String? usersId;

  MyFavoriteModel(
      {this.favoriteId,
      this.favoriteUsersid,
      this.favoriteAddbookid,
      this.addbookId,
      this.addbookTitle,
      this.addbookDescription,
      this.addbookAuthor,
      this.addbookCity,
      this.addbookPrice,
      this.addbookImage,
      this.addbookCommunication,
      this.addbookDate,
      this.addbookCategoriesid,
      this.usersId});

  MyFavoriteModel.fromJson(Map<String, dynamic> json) {
    favoriteId = json['favorite_id'];
    favoriteUsersid = json['favorite_usersid'];
    favoriteAddbookid = json['favorite_addbookid'];
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
    usersId = json['users_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['favorite_id'] = favoriteId;
    data['favorite_usersid'] = favoriteUsersid;
    data['favorite_addbookid'] = favoriteAddbookid;
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
    data['users_id'] = usersId;
    return data;
  }
}
