// import '../../../all_export.dart';

// class OrdersArchiveView extends StatelessWidget {
//   const OrdersArchiveView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     Get.put(OrdersArchiveController());
//     return Scaffold(
//         backgroundColor: AppColor.secondaryBackground,
//         appBar: AppBar(
//           title: Text('orders'.tr),
//         ),
//         body: Container(
//           padding: const EdgeInsets.all(10),
//           child: GetBuilder<OrdersArchiveController>(
//               builder: ((controller) => HandlingDataView(
//                   statusRequest: controller.statusRequest,
//                   widget: ListView.builder(
//                     itemCount: controller.data.length,
//                     itemBuilder: ((context, index) => CardOrdersListArchive(
//                         listdata: controller.data[index])),
//                   )))),
//         ));
//   }
// }
