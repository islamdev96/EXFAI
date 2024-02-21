import 'package:exfai/addbook/addbook_model.dart';
import 'package:exfai/addbook/controller/addbook_data.dart';

import '../../../all_export.dart';

class AddBookViewController extends GetxController {
  AddBookData addBookData = AddBookData(Get.find());

  List<AddBookModel> data = [];

  late StatusRequest statusRequest;

  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();

    var response = await addBookData.get();

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List datalist = response['data'];
        data.addAll(datalist.map((e) => AddBookModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  deleteItems(String id, String imagename) {
    addBookData.delete({"id": id, "imagename": imagename});
    data.removeWhere((element) => element.addbookId == id);
    update();
  }

  goToPageEdit(AddBookModel addBookModel) {
    Get.toNamed(AppRoute.addbookEdit, arguments: {"AddBookModel:addBookModel"});
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  myback() {
    Get.offAllNamed(AppRoute.homepage);
    return Future.value(false);
  }
}
