import '../../../all_export.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {
  late AddBookModel addBookModel;
  late List<Map<String, dynamic>> subitems; // Define subitems here

  CartData cartData = CartData(Get.find());
  late StatusRequest statusRequest;
  MyServices myServices = Get.find();

  int countitems = 0;

  initialData() async {
    statusRequest = StatusRequest.loading;
    addBookModel = Get.arguments['addBookModel'];
    countitems = await getCountItems(addBookModel.addbookId!);
    statusRequest = StatusRequest.success;
    update();
  }

  Future<int> getCountItems(String addbookId) async {
    statusRequest = StatusRequest.loading;
    var response = await cartData.getCountCart(
        myServices.sharedPreferences.getString("id")!, addbookId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        int countitems = int.parse(response['data']);
        return countitems;
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    // Return a default value in case of failure or unexpected response
    return 0;
  }

  addItems(String addbookId) async {
    statusRequest = StatusRequest.loading;

    ///
    update();
    var response = await cartData.addCart(
        myServices.sharedPreferences.getString("id")!, addbookId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.snackbar(
          "تنبيه",
          "تمت إضافة المنتج إلى السلة",
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
              "انتقل إلى السلة",
              style: TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  deleteItems(String addbookId) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await cartData.deleteCart(
        myServices.sharedPreferences.getString("id")!, addbookId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.snackbar("تنبيه", "تمت إزالة المنتج من السلة",
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
                "انتقل إلى السلة",
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ));
        // Get.defaultDialog(
        //     title: "alert".tr,
        //     middleText: "theProductHasBeenRemovedFromTheCart".tr);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  add() {
    addItems(addBookModel.addbookId!);
    countitems++;
    update();
  }

  remove() {
    if (countitems > 0) {
      deleteItems(addBookModel.addbookId!);
      countitems--;
      update();
    }
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
