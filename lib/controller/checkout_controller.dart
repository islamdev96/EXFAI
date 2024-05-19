import '../../all_export.dart';

class CheckoutController extends GetxController {
  AddressData addressData = Get.put(AddressData(Get.find()));
  CheckoutData checkoutData = Get.put(CheckoutData(Get.find()));

  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

  String? deliveryType;
  String addressid = "0";

  late String couponid;
  late String coupondiscount;
  late String priceorders;

  List<AddressModel> dataaddress = [];

  void chooseDeliveryType(String val) {
    deliveryType = val;
    update();
  }

  void chooseShippingAddress(String val) {
    addressid = val;
    update();
  }

  void cancelShippingAddress() {
    addressid = "0";
    update();
  }

  Future<void> getShippingAddress() async {
    statusRequest = StatusRequest.loading;

    var response = await addressData
        .getData(myServices.sharedPreferences.getString("id")!);

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        dataaddress.addAll(listdata.map((e) => AddressModel.fromJson(e)));
        addressid = dataaddress[0].addressId.toString();
      } else {
        statusRequest = StatusRequest.success;
      }
      // End
    }
    update();
  }

  Future<void> checkout() async {
    // Assuming default values for address, payment method, and order type
    String defaultAddressId = "default_address";
    String defaultPaymentMethod = "default_payment";
    String defaultOrderType = "default_order";

    Map data = {
      "usersid": myServices.sharedPreferences.getString("id").toString(),
      "addressid": defaultAddressId,
      "orderstype": defaultOrderType,
      "pricedelivery": "10",
      "ordersprice": priceorders,
      "couponid": couponid,
      "coupondiscount": coupondiscount.toString(),
      "paymentmethod": defaultPaymentMethod,
    };

    var response = await checkoutData.checkout(data);

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.homepage);
        Get.snackbar("success".tr, "orderSuccessful".tr);
      } else {
        statusRequest = StatusRequest.none;
        Get.snackbar("red".tr, "tryAgain".tr);
      }
      // End
    }
    update();
  }

  @override
  void onInit() {
    couponid = Get.arguments['couponid'];
    priceorders = Get.arguments['priceorder'];
    coupondiscount = Get.arguments['discountcoupon'].toString();

    getShippingAddress();
    super.onInit();
  }
}
