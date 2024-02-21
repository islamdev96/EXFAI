import 'dart:io';

import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:exfai/addbook/addbook_model.dart';
import 'package:exfai/addbook/controller/addbook_data.dart';
import 'package:exfai/addbook/controller/addbook/view_controller.dart';
import 'package:exfai/addbook/function/uploadfile.dart';

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

  chooseImage() async {
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

  @override
  void onInit() {
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
    title.text = addBookModel!.addbookTitle!;
    description.text = addBookModel!.addbookDescription!;
    author.text = addBookModel!.addbookAuthor!;
    city.text = addBookModel!.addbookCity!;
    price.text = addBookModel!.addbookPrice!;
    communication.text = addBookModel!.addbookCommunication!;
    count!.text = addBookModel!.addbookCount!;
    discount!.text = addBookModel!.addbookDiscount!;
    categoriesid!.text = addBookModel!.categoriesId!;
    categorieName!.text = addBookModel!.categoriesName!;
    active = addBookModel!.addbookActive;
    super.onInit();
  }
}
