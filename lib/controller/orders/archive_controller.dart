import '../../all_export.dart';

class OrdersArchiveController extends GetxController {
  OrdersArchiveData ordersArchiveData = OrdersArchiveData(Get.find());

  List<OrdersModel> data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  String printOrderType(String val) {
    if (val == "0") {
      return "delivery".tr;
    } else {
      return "recive".tr;
    }
  }

  String printPaymentMethod(String val) {
    if (val == "0") {
      return "cashOnDelivery".tr;
    } else {
      return "paymentCards".tr;
    }
  }

  String printOrderStatus(String val) {
    if (val == "0") {
      return "pendingApproval".tr;
    } else if (val == "1") {
      return "theOrderIsBeingPrepared".tr;
    } else if (val == "2") {
      return "readyToPickedUpByDeliveryMan".tr;
    } else if (val == "3") {
      return "onTheWay".tr;
    } else {
      return "archive".tr;
    }
  }

  getOrders() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersArchiveData
        .getData(myServices.sharedPreferences.getString("id")!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  submitRating(String ordersid, double rating, String comment) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await ordersArchiveData.rating(ordersid, comment, rating.toString());
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        getOrders();
      } else {
        statusRequest = StatusRequest.success;
      }
      // End
    }
    update();
  }

  refrehOrder() {
    getOrders();
  }

  @override
  void onInit() {
    getOrders();
    super.onInit();
  }
}
