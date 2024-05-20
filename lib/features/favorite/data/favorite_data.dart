import '../../../../all_export.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite(String bookid, String usersid) async {
    var response = await crud
        .postData(AppLink.favoriteAdd, {"bookid": bookid, "usersid": usersid});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite(String bookid, String usersid) async {
    var response = await crud.postData(
        AppLink.favoriteRemove, {"bookid": bookid, "usersid": usersid});
    return response.fold((l) => l, (r) => r);
  }
}
