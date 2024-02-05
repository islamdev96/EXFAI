import '../../../all_export.dart';

class CardOrdersList extends GetView<OrdersPendingController> {
  final OrdersModel listdata;
  const CardOrdersList({super.key, required this.listdata});

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
          padding: EdgeInsets.all(55.spMax),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("$orderNumber :  ${listdata.ordersId}",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColor.secondaryText)),
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
                  "$orderType : ${controller.printOrderType(listdata.ordersType!)}",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.secondaryText)),
              Text("$orderPrice : ${listdata.ordersPrice} \$",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.secondaryText)),
              Text("$deliveryPrice : ${listdata.ordersPricedelivery} \$ ",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.secondaryText)),
              Text(
                  "$paymentMethod : ${controller.printPaymentMethod(listdata.ordersPaymentmethod!)} ",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.secondaryText)),
              Text(
                  "$orderStatus : ${controller.printOrderStatus(listdata.ordersStatus!)} ",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.secondaryText)),
              const Divider(),
              Row(
                children: [
                  Text("$totalPrice : ${listdata.ordersTotalprice} \$ ",
                      style: const TextStyle(
                          color: AppColor.secondaryText,
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
                      color: AppColor.primary,
                      textColor: AppColor.white,
                      child: Text("delete".tr),
                    ),
                  if (listdata.ordersStatus! == "3")
                    MaterialButton(
                      onPressed: () {
                        // controller.deleteOrder(listdata.ordersId!);
                        // Get.toNamed(AppRoute.ordersTracking,arguments:("ordersmodel":listdata));
                        controller.goToPageTracking(listdata);
                      },
                      // color: AppColor.secondaryBackground,
                      // textColor: AppColor.secondaryText,
                      // child: Text("tracking".tr),
                    )
                ],
              ),
            ],
          )),
    );
  }
}
