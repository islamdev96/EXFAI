import '../../../all_export.dart';

class CategoriesViewController extends GetxController {
  CategoriesData categoriesData = CategoriesData(Get.find());

  List<CategoriesModel> data = [];

  late StatusRequest statusRequest;

  get categoriesModel => CategoriesModel;

  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();

    var response = await categoriesData.get();

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List datalist = response['data'];
        data.addAll(datalist.map((e) => CategoriesModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  deleteCategory(String id, String imagename) {
    categoriesData.delete({"id": id, "imagename": imagename});
    data.removeWhere((element) => element.categoriesId == id);
    update();
  }

  goToPageEdit(CategoriesModel categoriesModel) {
    Get.toNamed(AppRoute.categoriesEdit,
        arguments: {"CategoriesModel:categoriesModel"});
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  myback() {
    Get.back();
    return Future.value(false);
  }
}
