import '../../../all_export.dart';

class FavoriteController extends GetxController {
  FavoriteData favoriteData = FavoriteData(Get.find());
  AddBookModel? addBookModel;

  List data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  Map isFavorite = {};

//  key => id items
//  Value => 1 OR 0

  setFavorite(id, val) {
    isFavorite[id] = val;
    update();
  }

  addFavorite(String addbookid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.addFavorite(
        myServices.sharedPreferences.getString("id")!, addbookid);
    print("=================add============== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.snackbar("تنبيه", "تم اضافة المنتج من المفضلة ",
            animationDuration: const Duration(seconds: 2),
            snackPosition: SnackPosition.TOP,
            duration: const Duration(seconds: 2),
            icon: const Icon(
              Icons.shopping_cart,
              color: AppColor.white,
            ),
            mainButton: TextButton(
              onPressed: () {
                Get.toNamed(AppRoute.cart);
              },
              child: const Text(
                "انتقل إلى المفضلة",
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  removeFavorite(String addbookid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.removeFavorite(
        myServices.sharedPreferences.getString("id")!, addbookid);
    print("=============remove================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.snackbar("تنبيه", "تم حذف المنتج من المفضلة ",
            animationDuration: const Duration(seconds: 2),
            snackPosition: SnackPosition.TOP,
            duration: const Duration(seconds: 2),
            icon: const Icon(
              Icons.shopping_cart,
              color: AppColor.white,
            ),
            mainButton: TextButton(
              onPressed: () {
                Get.toNamed(AppRoute.cart);
              },
              child: const Text(
                "انتقل إلى المفضلة",
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }
}
