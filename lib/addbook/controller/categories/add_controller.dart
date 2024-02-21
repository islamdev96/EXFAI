import 'dart:io';
import 'package:exfai/addbook/controller/categories/view_controller.dart';
import 'package:exfai/addbook/function/uploadfile.dart';
import 'package:exfai/all_export.dart';
import 'package:exfai/data/datasource/remote/categories_data.dart';

class CategoriesAddController extends GetxController {
  CategoriesData categoriesData = CategoriesData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController name;
  late TextEditingController namear;
  StatusRequest? statusRequest = StatusRequest.none;

  File? file;

  showOptionImage() async {
    print("Showing option image menu");
    showbottonmenu(chooseImageCamera, chooseImageGallery);
  }

  chooseImageCamera() async {
    print("Choosing image from camera");
    file = await imageUploadCamera();
    update();
  }

  chooseImageGallery() async {
    print("Choosing image from gallery");
    file = await fileUploadGallery();
    update();
  }

  addData() async {
    if (formState.currentState!.validate()) {
      if (file == null) Get.snackbar("Warning", "Please Choose an Image");

      statusRequest = StatusRequest.loading;
      update();
      Map data = {"name": name.text, "namear": namear.text};

      var response = await categoriesData.add(data, file!);

      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.categoriesView);
          CategoriesController c = Get.find();
          c.getData();
        } else {
          statusRequest = StatusRequest.failure;
          print(response['status']); // Corrected line
        }
        print(response['status']); // Corrected line
      }
      update();
    }
  }

  @override
  void onInit() {
    name = TextEditingController();
    namear = TextEditingController();

    super.onInit();
  }
}