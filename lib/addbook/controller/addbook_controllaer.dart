import 'package:exfai/addbook/data/model/addbook_model.dart';
import '../../all_export.dart';

abstract class AddBookController extends GetxController {
  initialData();
  changeCat(int val, String catval);
  getItems(String categoryid);
  goToPageProductDetails(AddBookModel addBookModel);
}

class AddBookControllerImp extends SearchMixController {
  List categories = [];
  String? catid;
  int? selectedCat;

  AddbookData testData = AddbookData(Get.find());

  String deliverytime = "";
  List data = [];

  @override
  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  @override
  void onInit() {
    search = TextEditingController();
    initialData();
    super.onInit();
  }

  initialData() {
    deliverytime = myServices.sharedPreferences.getString("deliverytime")!;
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
    catid = Get.arguments['catid'];
    getItems(catid!);
  }

  changeCat(int val, String catval) {
    selectedCat = val;
    catid = catval;
    getItems(catid!);
    update();
  }

  getItems(String categoryid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await testData.getData(
        categoryid, myServices.sharedPreferences.getString("id")!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  goToPageProductDetails(AddBookModel addBookModel) {
    Get.toNamed("productdetails", arguments: {
      "addBookModel": addBookModel,
    });
  }
}
