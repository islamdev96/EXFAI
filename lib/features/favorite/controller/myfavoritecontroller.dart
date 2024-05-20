// ignore_for_file: overridden_fields, unused_field

import '../../../all_export.dart';

class MyFavoriteController extends SearchMixController {
  final MyFavoriteData _favoriteData = MyFavoriteData(Get.find());
  final FavoriteController _favoriteController = FavoriteController();
  final MyServices _myServices = Get.find();

  List<ItemsModel> favoriteItems = [];
  List<FavoriteModel> favoriteModels = [];
  @override
  late StatusRequest statusRequest;

  @override
  void onInit() {
    super.onInit();
    _initializeController();
  }

  void _initializeController() {
    statusRequest = StatusRequest.loading;
    _fetchFavoriteItems();
  }

  Future<void> _fetchFavoriteItems() async {
    favoriteItems.clear();
    final userId = _myServices.sharedPreferences.getString("id") ?? "465";
    final response = await _favoriteData.getData(userId);

    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success &&
        response['status'] == "success") {
      List<dynamic> responseData = response['data'];
      favoriteItems = responseData.map((e) {
        var book = ItemsModel.fromJson(e);
        FavoriteController.favoriteItemsIds.add(book.itemsId);
        return book;
      }).toList();

      // Ensure favoriteModels is populated correctly
      favoriteModels =
          responseData.map((e) => FavoriteModel.fromJson(e)).toList();
    } else {
      statusRequest = StatusRequest.failure;
    }

    update();
  }

  void removeFromFavorites(String favoriteId, String itemsId) {
    FavoriteController.favoriteItemsIds.remove(itemsId);
    _favoriteData.deleteData(favoriteId);
    favoriteItems.removeWhere((book) => book.itemsId == itemsId);
    favoriteModels.removeWhere((model) => model.favoriteId == favoriteId);

    Get.snackbar(
      "تم الحذف",
      "تم حذف المنتج من المفضلة",
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 1),
    );

    update();
  }

  Future<bool> navigateBackToHome() async {
    Get.offAllNamed(AppRoute.homepage);
    return true;
  }
}
