// ignore_for_file: unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exfai/all_export.dart';

import 'package:exfai/core/functions/get_pilyline.dart';

class TrackingController extends GetxController {
  Set<Polyline> polylineSet = {};
  MyServices myServices = Get.find();

  GoogleMapController? gnc;
  //Timer? timer;
  List<Marker> markers = [];
  CameraPosition? cameraPosition;

  StatusRequest statusRequest = StatusRequest.success;
  late OrdersModel ordersModel;
  // OrdersAcceptedController ordersAcceptedController=Get.find();
  double? destlat;
  double? destlong;
  double? currentlat;
  double? currentlong;

  initialData() {
    cameraPosition = CameraPosition(
      target: LatLng(double.parse(ordersModel.addressLat!),
          double.parse(ordersModel.addressLong!)),
      zoom: 12.4746,
    );

    markers.add(Marker(
        markerId: const MarkerId("current"),
        position: LatLng(double.parse(ordersModel.addressLat!),
            double.parse(ordersModel.addressLong!))));

    //  markers.removeWhere((element)=>element.markerId.value== "current");

    // markers.add(Marker(
    //  markerId: const MarkerId("current"),
    // position: LatLng(position!.latitude,
    //  position.longitude)));
  }

  refreshLocation() async {
    await Future.delayed(const Duration(seconds: 2));
    var timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      FirebaseFirestore.instance
          .collection("delivery")
          .doc(ordersModel.ordersId)
          .set({
        "lat": currentlat,
        "long": currentlong,
        "deliveryid": myServices.sharedPreferences.getString("id")
      });
    });
  }

  initPolyline() async {
    destlat = double.parse(ordersModel.addressLat!);
    destlong = double.parse(ordersModel.addressLong!);
    await Future.delayed(const Duration(seconds: 1));
    polylineSet = await getPolyLine(currentlat, currentlong, destlat, destlong);
    update();
  }

  getLocationdelivery() {
    FirebaseFirestore.instance
        .collection("delivery")
        .doc(ordersModel.ordersId)
        .snapshots()
        .listen((event) {
      if (event.exists) {
        destlat = event.get("lat");
        destlong = event.get("long");
        updateMarkerDelivery(destlat!, destlong!);
      }
    });
  }

  updateMarkerDelivery(double newlat, double newlong) {
    markers.removeWhere((element) => element.markerId.value == "dest");

    markers.add(Marker(
        markerId: const MarkerId("dest"), position: LatLng(newlat, newlong)));
    update();
  }

  @override
  void onInit() {
    ordersModel = Get.arguments['ordersmodel'];
    initialData();
    getLocationdelivery();

    // getCurrentLocation();
    // refreshLocation();

    // initPolyline();
    super.onInit();
  }

  @override
  void onClose() {
    gnc!.dispose();
    //timer!.cancel();

    super.onClose();
  }
}
