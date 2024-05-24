// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

// import '../../../all_export.dart';

// class OrdersDetails extends StatelessWidget {
//   const OrdersDetails({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final String totalPrice = "totalPrice".tr;

//     // ignore: unused_local_variable
//     OrdersDetailsController controller = Get.put(OrdersDetailsController());
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ordersDetails'.tr),
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//         child: GetBuilder<OrdersDetailsController>(
//             builder: ((controller) => HandlingDataView(
//                 statusRequest: controller.statusRequest,
//                 widget: ListView(children: [
//                   Card(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 20),
//                       child: Column(
//                         children: [
//                           Table(
//                             children: [
//                               TableRow(children: [
//                                 Text("item".tr,
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                         color: AppColor.secondaryBackground,
//                                         fontWeight: FontWeight.bold)),
//                                 Text("qTY".tr,
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                         color: AppColor.secondaryBackground,
//                                         fontWeight: FontWeight.bold)),
//                                 Text("price".tr,
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                         color: AppColor.secondaryBackground,
//                                         fontWeight: FontWeight.bold)),
//                               ]),
//                               // TableRow(children: [
//                               //   Text("Macbook m1", textAlign: TextAlign.center),
//                               //   Text("2", textAlign: TextAlign.center),
//                               //   Text("1200", textAlign: TextAlign.center),
//                               // ]),
//                               ...List.generate(
//                                   controller.data.length,
//                                   (index) => TableRow(children: [
//                                         Text(
//                                             "${controller.data[index].itemsName}",
//                                             textAlign: TextAlign.center),
//                                         Text(
//                                             "${controller.data[index].countitems}",
//                                             textAlign: TextAlign.center),
//                                         Text(
//                                             "${controller.data[index].itemsprice}",
//                                             textAlign: TextAlign.center),
//                                       ]))
//                             ],
//                           ),
//                           SizedBox(height: 10.h),
//                           Container(
//                             padding: EdgeInsets.symmetric(horizontal: 10),
//                             child: Text(
//                                 "$totalPrice : ${controller.ordersModel.ordersTotalprice}${"egp".tr}",
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     color: AppColor.secondaryBackground,
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   if (controller.ordersModel.ordersType == "0")
//                     Card(
//                       child: Container(
//                           child: ListTile(
//                         title: Text("shippingAddress".tr,
//                             style: TextStyle(
//                                 color: AppColor.secondaryBackground,
//                                 fontWeight: FontWeight.bold)),
//                         subtitle: Text(
//                             "${controller.ordersModel.addressCity} ${controller.ordersModel.addressStreet}"),
//                       )),
//                     ),
//                   if (controller.ordersModel.ordersType == "0")
//                     Card(
//                       child: Container(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                         height: 300,
//                         width: double.infinity,
//                         child: GoogleMap(
//                           mapType: MapType.normal,
//                           markers: controller.markers.toSet(),
//                           initialCameraPosition: controller.cameraPosition!,
//                           onMapCreated: (GoogleMapController controllermap) {
//                             controller.completercontroller
//                                 ?.complete(controllermap);
//                           },
//                         ),
//                       ),
//                     )
//                 ])))),
//       ),
//     );
//   }
// }
