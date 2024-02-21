class CartModel {
  CartModel(
      {this.addbookprice,
      this.countaddbook,
      this.cartId,
      this.cartUsersid,
      this.cartAddbookid,
      this.cartOrders,
      this.addbookId,
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
      this.addbookCategoriesid});

  CartModel.fromJson(Map<String, dynamic> json) {
    addbookprice = json['addbookprice'];
    countaddbook = json['countaddbook'];
    cartId = json['cart_id'];
    cartUsersid = json['cart_usersid'];
    cartAddbookid = json['cart_addbookid'];
    cartOrders = json['cart_orders'];
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
  }

  String? addbookActive;
  String? addbookAuthor;
  String? addbookCategoriesid;
  String? addbookCity;
  String? addbookCommunication;
  String? addbookCount;
  String? addbookDate;
  String? addbookDescription;
  String? addbookDiscount;
  String? addbookId;
  String? addbookImage;
  String? addbookPrice;
  String? addbookTitle;
  String? addbookprice;
  String? cartAddbookid;
  String? cartId;
  String? cartOrders;
  String? cartUsersid;
  String? countaddbook;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['addbookprice'] = addbookprice;
    data['countaddbook'] = countaddbook;
    data['cart_id'] = cartId;
    data['cart_usersid'] = cartUsersid;
    data['cart_addbookid'] = cartAddbookid;
    data['cart_orders'] = cartOrders;
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
    return data;
  }
}
