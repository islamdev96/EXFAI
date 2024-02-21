import '../../../../all_export.dart';

class CartData {
  Crud crud;
  CartData(this.crud);
  addCart(String usersid, String addbookid) async {
    var response = await crud.postData(
        AppLink.cartadd, {"usersid": usersid, "addbookid": addbookid});
    return response.fold((l) => l, (r) => r);
  }

  deleteCart(String usersid, String addbookid) async {
    var response = await crud.postData(
        AppLink.cartdelete, {"usersid": usersid, "addbookid": addbookid});
    return response.fold((l) => l, (r) => r);
  }

  getCountCart(String usersid, String addbookid) async {
    var response = await crud.postData(AppLink.cartgetcountaddbook,
        {"usersid": usersid, "addbookid": addbookid});
    return response.fold((l) => l, (r) => r);
  }

  viewCart(String usersid) async {
    var response = await crud.postData(AppLink.cartview, {
      "usersid": usersid,
    });
    return response.fold((l) => l, (r) => r);
  }

  checkCoupon(String couponname) async {
    var response =
        await crud.postData(AppLink.checkcoupon, {"couponname": couponname});
    return response.fold((l) => l, (r) => r);
  }
}
