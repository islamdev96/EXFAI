import '../../all_export.dart';

class OrdersPendingController extends GetxController {
  OrdersPendingData ordersPendingData = OrdersPendingData(Get.find());

  List<OrdersModel> data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();
  goToPageTracking(OrdersModel ordersmodel) {
    Get.toNamed(AppRoute.ordersTracking, arguments: ());
  }

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
    var response = await ordersPendingData
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

  deleteOrder(String orderid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersPendingData.deleteData(orderid);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        refrehOrder();
      } else {
        statusRequest = StatusRequest.failure;
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
