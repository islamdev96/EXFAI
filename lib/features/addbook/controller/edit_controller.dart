import 'dart:io';

import '../../../all_export.dart';

class AddBookEditController extends GetxController {
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
  String? active;
  AddBookModel? addBookModel;
  changeStatusActive(val) {
    active = val;
    update();
  }

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

  editData() async {
    if (formState.currentState!.validate()) {
      //  if(file == null) Get.snackbar("Warning","Please Choose Image SVG");

      statusRequest = StatusRequest.loading;
      update();
      Map data = {
        "id": addBookModel!.addbookId,
        "imageold": addBookModel!.addbookImage,
        "active": active,
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

      var response = await addBookData.edit(data, file);

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

    Get.offNamed(AppRoute.addbookEdit,
        arguments: {'AddBookModel': addBookModel});
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
    // title.text = addBookModel!.addbookTitle!;
    // description.text = addBookModel!.addbookDescription!;
    // author.text = addBookModel!.addbookAuthor!;
    // city.text = addBookModel!.addbookCity!;
    // price.text = addBookModel!.addbookPrice!;
    // communication.text = addBookModel!.addbookCommunication!;
    // count!.text = addBookModel!.addbookCount!;
    // discount!.text = addBookModel!.addbookDiscount!;
    // categoriesid!.text = addBookModel!.categoriesId!;
    // categorieName!.text = addBookModel!.categoriesName!;
    // active = addBookModel!.addbookActive;
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
