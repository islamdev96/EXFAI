// ignore_for_file: overridden_fields

import 'package:exfai/data/datasource/remote/offer_data.dart';

import '../all_export.dart';

class OffersController extends SearchMixController {
  OfferData offerData = OfferData(Get.find());

  List<ItemsModel> data = [];

  @override
  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;

    var response = await offerData.getData();
    // print("======================================= Controller$response");
    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata2 = response['data'];
        data.addAll(listdata2.map((e) => ItemsModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  @override
  void onInit() {
    search = TextEditingController();
    getData();
    super.onInit();
  }
}
