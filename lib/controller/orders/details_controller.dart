import '../../all_export.dart';

class OrdersDetailsController extends GetxController {
  OrdersDetailsData ordersDetailsData = OrdersDetailsData(Get.find());

  List<CartModel> data = [];

  late StatusRequest statusRequest;

  late OrdersModel ordersModel;

  Completer<GoogleMapController>? completercontroller;

  List<Marker> markers = [];

  double? lat;
  double? long;

  CameraPosition? cameraPosition;

  // Provide default values for latitude and longitude
  static const double defaultLatitude = 37.7749; // Example default latitude
  static const double defaultLongitude = -122.4194; // Example default longitude

  intialData() {
    // Use default coordinates if addressLat or addressLong is null
    final targetLat =
        double.parse(ordersModel.addressLat ?? defaultLatitude.toString());
    final targetLong =
        double.parse(ordersModel.addressLong ?? defaultLongitude.toString());

    if (ordersModel.ordersType == "0") {
      cameraPosition = CameraPosition(
        target: LatLng(targetLat, targetLong),
        zoom: 12.4746,
      );
      markers.add(Marker(
          markerId: const MarkerId("1"),
          position: LatLng(targetLat, targetLong)));
    }
  }

  @override
  void onInit() {
    ordersModel = Get.arguments['ordersmodel'];
    intialData();
    getData();
    super.onInit();
  }

  getData() async {
    statusRequest = StatusRequest.loading;

    var response = await ordersDetailsData.getData(ordersModel.ordersId!);

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => CartModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }
}
