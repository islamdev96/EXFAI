import 'dart:io';

import '../../../all_export.dart';

class CategoriesAddController extends GetxController {
  CategoriesData categoriesData = CategoriesData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController name;
  late TextEditingController description;
  StatusRequest? statusRequest = StatusRequest.none;

  File? file;

  showOptionImage() async {
    showbottonmenu(chooseImageCamera, chooseImageGallery);
  }

  chooseImageCamera() async {
    file = await imageUploadCamera();
    update();
  }

  chooseImageGallery() async {
    file = await fileUploadGallery();
    update();
  }

  addData() async {
    if (formState.currentState!.validate()) {
      if (file == null) {
        Get.snackbar("Warning", "Please Choose an Image");
        return;
      }

      statusRequest = StatusRequest.loading;
      update();
      Map data = {"name": name.text, "description": description.text};

      var response = await categoriesData.add(data, file!);

      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.categoriesView);
          CategoriesViewController c = Get.find();
          c.getData();
        } else {
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    name = TextEditingController();
    description = TextEditingController();
    super.onInit();
  }
}
