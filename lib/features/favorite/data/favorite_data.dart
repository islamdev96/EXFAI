import '../../../../all_export.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite(String usersid, String addbookid) async {
    var response = await crud.postData(
        AppLink.favoriteAdd, {"usersid": usersid, "addbookid": addbookid});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite(String usersid, String addbookid) async {
    var response = await crud.postData(
        AppLink.favoriteRemove, {"usersid": usersid, "addbookid": addbookid});
    return response.fold((l) => l, (r) => r);
  }
}
