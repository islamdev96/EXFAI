// ignore_for_file: prefer_const_constructors, unused_local_variable

import '../../all_export.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    String youHave = "youHave".tr;
    String itemsInYourList = "itemsInYourList".tr;

    CartController cartController = Get.put(CartController());
    return Scaffold(
        backgroundColor: AppColor.scaffoldBackgroundColor,
        appBar: AppBar(
          title: Text(
            "myCart".tr,
            style: TextStyle(color: AppColor.black),
          ),
        ),
        bottomNavigationBar: GetBuilder<CartController>(
            builder: (controller) => BottomNavgationBarCart(
                shipping: "0",
                controllercoupon: controller.controllercoupon!,
                onApplyCoupon: () {
                  controller.checkcoupon();
                },
                price: "${cartController.priceorders}",
                discount: "${controller.discountcoupon}%",
                totalprice: "${controller.getTotalPrice()}")),
        body: GetBuilder<CartController>(
            builder: ((controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView(
                  children: [
                    SizedBox(height: 10.h),
                    TopCardCart(
                        message:
                            "$youHave (   ${cartController.totalcountaddbook}  )  $itemsInYourList"),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: const [
                          // ...List.generate(
                          //   cartController.data.length,
                          //   (index) => CustomItemsCartList(
                          //     onAdd: () async {
                          //       await cartController
                          //           .add(cartController.data[index].addbookId!);
                          //       cartController.refreshPage();
                          //     },
                          //     onRemove: () async {
                          //       await cartController.delete(
                          //           cartController.data[index].addbookId!);
                          //       cartController.refreshPage();
                          //     },
                          //     imageName:
                          //         "${cartController.data[index].addbookImage}",
                          //     name:
                          //         "${cartController.data[index].addbookTitle}",
                          //     price:
                          //         "${cartController.data[index].addbookprice} \$",
                          //     count:
                          //         "${cartController.data[index].countaddbook}",

                          //   ),
                          // )
                        ],
                      ),
                    )
                  ],
                )))));
  }
}
