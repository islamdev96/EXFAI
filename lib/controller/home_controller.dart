// ignore_for_file: overridden_fields

import 'package:exfai/addbook/data/model/addbook_model.dart';

import '../../all_export.dart';

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

  List categories = [];
  // List items = [];
  List addbook = [];
  List settingsdata = [];

  @override
  initialData() {
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
        // items.addAll(response['items']['data']);
        addbook.addAll(response['addbook']['data']);
        settingsdata.addAll(response['settings']['data']);
        if (settingsdata.isNotEmpty) {
          titleHomeCard = settingsdata[0]['settings_titleome'] ?? "";
          bodyHomeCard = settingsdata[0]['settings_bodyHome'] ?? "";
          deliveryTime = settingsdata[0]['settings_deliverytime'] ?? "";
          myServices.sharedPreferences.setString("deliverytime", deliveryTime);
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToItems(categories, selectedCat, categoryid) {
    Get.toNamed(AppRoute.addbook, arguments: {
      "categories": categories,
      "selectedcat": selectedCat,
      "catid": categoryid
    });
  }

  goToPageProductDetails(addBookModel) {
    Get.toNamed("productdetails", arguments: {"addBookModel": addBookModel});
  }
}

class SearchMixController extends GetxController {
  List<AddBookModel> listdata = [];
  // List<AddBookModel> listdata2 = [];

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
        listdata.addAll(responsedata.map((e) => AddBookModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

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
