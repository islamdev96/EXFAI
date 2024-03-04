// AddBookAddController.dart

import 'dart:io';

import '../../../../all_export.dart';

class AddBookAddController extends GetxController {
  AddBookData addBookData = AddBookData(Get.find());
  List<SelectedListItem> dropdownlist = [];
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController dropdownname;
  late TextEditingController dropdownid;
  late TextEditingController title;
  late TextEditingController description;
  late TextEditingController author;
  late TextEditingController city;
  late TextEditingController price;

  late TextEditingController communication;
  TextEditingController? count;
  TextEditingController? discount;

  TextEditingController? categorieName;
  TextEditingController? categoriesid;
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
        Get.snackbar("Warning", "Please Choose Image ");
        return; // توقف عن إرسال البيانات إذا لم يتم اختيار الصورة
      }

      // طباعة البيانات قبل إرسالها

      statusRequest = StatusRequest.loading;
      update();
      Map data = {
        "title": title.text,
        "description": description.text,
        "author": author.text,
        "city": city.text,
        "price": price.text,
        "communication": communication.text,
        "count": count!.text,
        "discount": discount!.text,
        "categoriesid": categoriesid!.text,
        "datenow": DateTime.now().toString()
      };

      var response = await addBookData.add(data, file!);

      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        // Start backend
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.addbookView);
          AddBookViewController c = Get.find();
          c.getData();
        } else {
          statusRequest = StatusRequest.failure;
        }
        // End
      }
      update();
    }
  }

  // addData() async {
  //   print(
  //       "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");

  //   print("Adding data...");
  //   print(
  //       "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");

  //   if (formState.currentState!.validate()) {
  //     if (file == null) Get.snackbar("Warning", "Please Choose Image ");

  //     statusRequest = StatusRequest.loading;
  //     update();
  //     Map data = {
  //       "title": title.text,
  //       "description": description.text,
  //       "author": author.text,
  //       "city": city.text,
  //       "price": price.text,
  //       "communication": communication.text,
  //       "count": count!.text,
  //       "discount": discount!.text,
  //       "categoriesid": categoriesid!.text,
  //       "datenow": DateTime.now().toString()
  //     };

  //     var response = await addBookData.add(data, file!);

  //     statusRequest = handlingData(response);

  //     if (StatusRequest.success == statusRequest) {
  //       // Start backend
  //       if (response['status'] == "success") {
  //         Get.offNamed(AppRoute.addbookView);
  //         AddBookViewController c = Get.find();
  //         c.getData();
  //       } else {
  //         statusRequest = StatusRequest.failure;
  //       }
  //       // End
  //     }
  //     update();
  //   }
  // }

  getCategories() async {
    CategoriesData categoriesData = CategoriesData(Get.find());
    statusRequest = StatusRequest.loading;
    update();

    var response = await categoriesData.get();

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List<CategoriesModel> data = [];
        List datalist = response['data'];
        data.addAll(datalist.map((e) => CategoriesModel.fromJson(e)));
        for (int i = 0; i < data.length; i++) {
          dropdownlist.add(SelectedListItem(
              name: data[i].categoriesName!, value: data[i].categoriesId));
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  @override
  void onInit() {
    getCategories();
    title = TextEditingController();
    description = TextEditingController();
    author = TextEditingController();
    city = TextEditingController();
    price = TextEditingController();
    communication = TextEditingController();
    count = TextEditingController();
    discount = TextEditingController();
    categorieName = TextEditingController();
    categoriesid = TextEditingController();
    dropdownname = TextEditingController();
    dropdownid = TextEditingController();
    super.onInit();
  }

  showDropdown(context) {
    DropDownState(
      DropDown(
        bottomSheetTitle: const Text(
          "title",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        submitButtonChild: const Text(
          'Done',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        data: [SelectedListItem(name: "a"), SelectedListItem(name: "b")],
        selectedItems: (List<dynamic> selectedList) {
          SelectedListItem selectedListItem = selectedList[0];
          dropdownname.text = selectedListItem.name;
        },
        // showSnackBar(list.toString());
      ),
    ).showModal(context);
  }
}
