import '../../../all_export.dart';

class CardOrdersList extends GetView<OrdersPendingController> {
  final OrdersModel listdata;
  const CardOrdersList({Key? key, required this.listdata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String orderNumber = "orderNumber".tr;
    final String orderType = "orderType".tr;
    final String deliveryPrice = "deliveryPrice".tr;
    final String paymentMethod = "paymentMethod".tr;
    final String orderPrice = "orderPrice".tr;
    final String orderStatus = "orderStatus".tr;
    final String totalPrice = "totalPrice".tr;
    return Card(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("$orderNumber : #${listdata.ordersId}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  // Text(listdata.ordersDatetime!)
                  // Text(
                  //   Jiffy.parseFromDateTime(
                  //     listdata.ordersDatetime! as DateTime,
                  //   ).fromNow(),
                  //   style: const TextStyle(
                  //     color: AppColor.primaryColor,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ],
              ),
              const Divider(),
              Text(
                  "$orderType : ${controller.printOrderType(listdata.ordersType!)}"),
              Text("$orderPrice : ${listdata.ordersPrice} \$"),
              Text("$deliveryPrice : ${listdata.ordersPricedelivery} \$ "),
              Text(
                  "$paymentMethod : ${controller.printPaymentMethod(listdata.ordersPaymentmethod!)} "),
              Text(
                  "$orderStatus : ${controller.printOrderStatus(listdata.ordersStatus!)} "),
              const Divider(),
              Row(
                children: [
                  Text("$totalPrice : ${listdata.ordersTotalprice} \$ ",
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold)),
                  const Spacer(),
                  // MaterialButton(
                  //   onPressed: () {
                  //     Get.toNamed(AppRoute.ordersdetails,
                  //         arguments: {"ordersmodel": listdata});
                  //   },
                  //   color: AppColor.thirdColor,
                  //   textColor: AppColor.secondColor,
                  //   child: Text("details".tr),
                  // ),
                  const SizedBox(width: 10),
                  if (listdata.ordersStatus! == "0")
                    MaterialButton(
                      onPressed: () {
                        controller.deleteOrder(listdata.ordersId!);
                      },
                      color: AppColor.thirdColor,
                      textColor: AppColor.secondColor,
                      child: Text("delete".tr),
                    ),
                  if (listdata.ordersStatus! == "3")
                    MaterialButton(
                      onPressed: () {
                        // controller.deleteOrder(listdata.ordersId!);
                        // Get.toNamed(AppRoute.ordersTracking,arguments:("ordersmodel":listdata));
                        controller.goToPageTracking(listdata);
                      },
                      color: AppColor.thirdColor,
                      textColor: AppColor.secondColor,
                      child: Text("tracking".tr),
                    )
                ],
              ),
            ],
          )),
    );
  }
}
