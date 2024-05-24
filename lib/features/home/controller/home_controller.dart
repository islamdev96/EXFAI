// ignore_for_file: overridden_fields

import '../../../all_export.dart';

abstract class HomeController extends SearchMixController {
  initialData();
  getdata();
  goToItems(List categories, int selectedCat, String categoryid);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? id;
  String? lang;
  String titleHomeCard = "";
  String bodyHomeCard = "";
  String deliveryTime = "";

  @override
  HomeData homedata = HomeData(Get.find());

  // List data = [];
  List categories = [];
  List items = [];
  List settingsdata = [];
  // List items = [];

  @override
  initialData() {
    // myServices.sharedPreferences.clear() ;
    lang = myServices.sharedPreferences.getString("lang");
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    search = TextEditingController();
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']['data']);
        items.addAll(response['items']['data']);
        // settingsdata.addAll(response['settings']['data']);
        if (settingsdata.isNotEmpty) {
          if (settingsdata[0]['settings_titleome'] != null) {
            titleHomeCard = settingsdata[0]['settings_titleome'] ?? "";
          }
          if (settingsdata[0]['settings_bodyHome'] != null) {
            bodyHomeCard = settingsdata[0]['settings_bodyHome'] ?? "";
          }
          if (settingsdata[0]['settings_deliverytime'] != null) {
            deliveryTime = settingsdata[0]['settings_deliverytime'] ?? "";
            myServices.sharedPreferences
                .setString("deliverytime", deliveryTime);
          }
        }
        // titleHomeCard = settingsdata[0]['settings_titleome'];
        // bodyHomeCard = settingsdata[0]['settings_bodyHome'] ?? "";
        // deliveryTime = settingsdata[0]['settings_deliverytime'];
        // myServices.sharedPreferences.setString("deliverytime", deliveryTime);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToItems(categories, selectedCat, categoryid) {
    Get.toNamed(AppRoute.items, arguments: {
      "categories": categories,
      "selectedcat": selectedCat,
      "catid": categoryid
    });
  }

  goToPageProductDetails(itemsModel) {
    Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});
  }
}

class SearchMixController extends GetxController {
  List<ItemsModel> listdata = [];

  late StatusRequest statusRequest;
  HomeData homedata = HomeData(Get.find());

  searchData() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.searchData(search!.text);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        listdata.clear();
        List responsedata = response['data'];
        listdata.addAll(responsedata.map((e) => ItemsModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

////////////////////////////////////////////////////////////
  addItems(String itemsid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.addCart(
        myServices.sharedPreferences.getString("id")!, itemsid);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.snackbar(
          "alert".tr,
          "theProductHasBeenAddedToTheCart".tr,
          animationDuration: const Duration(seconds: 2),
          snackPosition: SnackPosition.TOP,
          duration: const Duration(seconds: 2),
          icon: const Icon(
            Icons.shopping_cart,
            color: AppColors.white,
          ),
        );
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  CartData cartData = CartData(Get.find());

  deleteitems(String itemsid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.deleteCart(
        myServices.sharedPreferences.getString("id")!, itemsid);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.snackbar(
          "alert".tr,
          "theProductHasBeenRemovedFromTheCart".tr,
          animationDuration: const Duration(seconds: 2),
          snackPosition: SnackPosition.TOP,
          duration: const Duration(seconds: 2),
          icon: const Icon(
            Icons.shopping_cart,
            color: AppColors.white,
          ),
        );
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  late ItemsModel itemsModel;
  int countitems = 0;

  add() {
    addItems(itemsModel.itemsId!);
    countitems++;
    update();
  }

  remove() {
    if (countitems > 0) {
      deleteitems(itemsModel.itemsId!);
      countitems--;
      update();
    }
  }

////////////////////////////////////////////////////////////
  bool isSearch = false;
  TextEditingController? search;
  checkSearch(val) {
    if (val == "") {
      statusRequest = StatusRequest.none;
      isSearch = false;
    }
    update();
  }

  onSearchItems() {
    isSearch = true;
    searchData();
    update();
  }
}
