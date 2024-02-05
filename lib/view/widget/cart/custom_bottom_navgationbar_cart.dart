// ignore_for_file: avoid_unnecessary_containers, unused_local_variable

import '../../../all_export.dart';

class BottomNavgationBarCart extends GetView<CartController> {
  final String price;
  final String discount;
  final String shipping;
  final String totalprice;
  final TextEditingController controllercoupon;
  final void Function()? onApplyCoupon;
  const BottomNavgationBarCart(
      {super.key,
      required this.price,
      required this.discount,
      required this.shipping,
      required this.totalprice,
      required this.controllercoupon,
      this.onApplyCoupon});

  @override
  Widget build(BuildContext context) {
    final String couponCode = "couponCode".tr;
    return Container(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GetBuilder<CartController>(
            builder: (controller) => controller.couponname == null
                ? Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: [
                      Expanded(
                          flex: 2,
                          child: TextFormField(
                            cursorColor: AppColor.secondaryText,
                            controller: controllercoupon,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 10),
                                hintText: "couponCode".tr,
                                border: const OutlineInputBorder()),
                          )),
                      const SizedBox(width: 5),
                      Expanded(
                          flex: 1,
                          child: CustomButtonCoupon(
                            textbutton: "apply".tr,
                            onPressed: onApplyCoupon,
                          ))
                    ]))
                : Container(
                    child: Text(
                    "$couponCode ${controller.couponname!}",
                    style: const TextStyle(
                        color: AppColor.secondaryText,
                        fontWeight: FontWeight.bold),
                  ))),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.secondaryBackground, width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("price".tr,
                        style: const TextStyle(
                            fontSize: 16, color: AppColor.secondaryText))),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("$price \$",
                        style: const TextStyle(
                            fontSize: 16, color: AppColor.secondaryText)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("discount".tr,
                        style: const TextStyle(
                            fontSize: 16, color: AppColor.secondaryText))),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("$discount ",
                        style: const TextStyle(
                            fontSize: 16, color: AppColor.secondaryText)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("shipping".tr,
                        style: const TextStyle(
                            fontSize: 16, color: AppColor.secondaryText))),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("$shipping ",
                        style: const TextStyle(
                            fontSize: 16, color: AppColor.secondaryText)))
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("totalPrice".tr,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColor.black))),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("$totalprice \$",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primary)))
              ],
            ),
          ]),
        ),
        const SizedBox(height: 10),
        CustomButtonCart(
          textbutton: "order".tr,
          onPressed: () {
            controller.goToPageCheckout();
          },
        )
      ],
    ));
  }
}
