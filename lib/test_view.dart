// import 'all_export.dart';

// class TestView extends StatelessWidget {
//   const TestView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: MaterialButton(
//             color: AppColor.secondColor,
//             textColor: Colors.white,
//             onPressed: () {},
//             child: Text("checkout".tr,
//                 style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18)),
//           )),
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.grey[50],
//         elevation: 0.0,
//         title: Text("checkout".tr,
//             style: const TextStyle(
//                 color: AppColor.primaryColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 22)),
//       ),
//       body: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: ListView(children: [
//             Text("choosePaymentMethod".tr,
//                 style: const TextStyle(
//                     fontWeight: FontWeight.bold, color: AppColor.secondColor)),
//             const SizedBox(height: 10),
//             Container(
//                 width: double.infinity,
//                 margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: AppColor.secondColor),
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                 child: Text("cash".tr,
//                     style: const TextStyle(
//                         color: Colors.white,
//                         height: 1,
//                         fontWeight: FontWeight.bold))),
//             Container(
//                 width: double.infinity,
//                 margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: AppColor.thirdColor),
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                 child: Text("paymentCard".tr,
//                     style: const TextStyle(
//                         color: AppColor.secondColor,
//                         height: 1,
//                         fontWeight: FontWeight.bold))),
//             const SizedBox(height: 20),

//             Text("chooseTypeDelivery".tr,
//                 style: const TextStyle(
//                     fontWeight: FontWeight.bold, color: AppColor.secondColor)),
//             const SizedBox(height: 10),

//             Row(
//               children: [
//                 Container(
//                     height: 100,
//                     width: 100,
//                     decoration: BoxDecoration(
//                         color: AppColor.secondColor,
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: AppColor.primaryColor)),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(AppImageAsset.deliveryImage2,
//                             width: 40, color: Colors.white),
//                         Text(
//                           "delivery".tr,
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         )
//                       ],
//                     )),
//                 const SizedBox(width: 10),
//                 Container(
//                     // padding: EdgeInsets.all(20),
//                     height: 100,
//                     width: 100,
//                     decoration: BoxDecoration(
//                         // color: AppColor.thirdColor,
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: AppColor.primaryColor)),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(AppImageAsset.drivethruImage, width: 40),
//                         Text("toReceive".tr)
//                       ],
//                     ))
//               ],
//             ),
//             const SizedBox(height: 20),

//             Text("shippingAddress".tr,
//                 style: const TextStyle(
//                     fontWeight: FontWeight.bold, color: AppColor.secondColor)),
//             const SizedBox(height: 10),
//             Card(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//               child: Container(
//                   decoration:
//                       BoxDecoration(borderRadius: BorderRadius.circular(20)),
//                   padding: const EdgeInsets.all(10),
//                   child: ListTile(
//                     title: Text("home".tr,
//                         style: const TextStyle(fontWeight: FontWeight.bold)),
//                     subtitle: Text("damascusStreetOne".tr),
//                   )),
//             ),
//             Card(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//               child: Container(
//                   decoration:
//                       BoxDecoration(borderRadius: BorderRadius.circular(20)),
//                   padding: const EdgeInsets.all(10),
//                   child: ListTile(
//                     title: Text("office".tr,
//                         style: const TextStyle(fontWeight: FontWeight.bold)),
//                     subtitle: Text("hamaStreetTwo".tr),
//                   )),
//             )

//             // Spacer(),

//             // Card(child: Container(
//             //   decoration: BoxDecoration(
//             //     border: Border.all(color: AppColor.primaryColor)
//             //   ),
//             //   height: 200 , width: double.infinity),)
//           ])),
//     );
//   }
// }
