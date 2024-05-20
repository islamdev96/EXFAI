import '../../../all_export.dart';

class FavoriteController extends GetxController {
  FavoriteData favoriteData = FavoriteData(Get.find());
  // BookModel? bookModel;

  List data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  static Set favoriteItemsIds = {};

  void notifyFavoriteBookAddition(bookId) {
    favoriteItemsIds.add(bookId);
    update();
  }

  void notifyFavoriteBookRemoval(bookId) {
    favoriteItemsIds.remove(bookId);
    update();
  }

  addFavorite(String bookId) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.addFavorite(
      bookId,
      myServices.sharedPreferences.getString("id")!.toString() ?? "465",
    );
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.snackbar("تنبيه", "تم اضافة المنتج الى المفضلة ",
            animationDuration: const Duration(seconds: 2),
            snackPosition: SnackPosition.TOP,
            duration: const Duration(seconds: 2),
            icon: const Icon(
              Icons.shopping_cart,
              color: AppColors.white,
            ),
            mainButton: TextButton(
              onPressed: () {
                // Get.toNamed(AppRoute.myFavroite);
              },
              child: const Text(
                "انتقل إلى المفضلة",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ));

        notifyFavoriteBookAddition(bookId);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  removeFavorite(String bookId) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.removeFavorite(
      bookId,
      myServices.sharedPreferences.getString("id")!.toString() ?? "465",
    );
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.snackbar("تنبيه", "تم حذف المنتج من المفضلة ",
            animationDuration: const Duration(seconds: 1),
            snackPosition: SnackPosition.TOP,
            duration: const Duration(seconds: 1),
            icon: const Icon(
              Icons.shopping_cart,
              color: AppColors.white,
            ),
            mainButton: TextButton(
              onPressed: () {
                // Get.toNamed(AppRoute.myFavroite);
              },
              child: const Text(
                "انتقل إلى المفضلة",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ));

        notifyFavoriteBookRemoval(bookId);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }
}