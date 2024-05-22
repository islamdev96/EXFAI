// ignore_for_file: prefer_const_constructors, unused_local_variable

import '../../../../all_export.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    String youHave = "youHave".tr;
    String itemsInYourList = "itemsInYourList".tr;

    CartController cartController = Get.put(CartController());
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.primary33, //  تغيير لون الباك جراوند
        title: Text(
          "myCart".tr,
          style: TextStyle(color: AppColors.black),
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
            totalprice: "${controller.getTotalPrice()}"),
      ),
      body: GetBuilder<CartController>(
        builder: ((controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: RefreshIndicator(
                onRefresh: () async => cartController.refreshPage(),
                child: ListView(
                  children: [
                    // PageAppBar(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 40.h),
                          TopCardCart(
                            message:
                                "$youHave (   ${cartController.totalcountitems}  )  $itemsInYourList",
                          ),
                          SizedBox(height: 25.h),
                          ...List.generate(
                            cartController.data.length,
                            (index) => Column(
                              children: [
                                CustomItemsCartList(
                                    onAdd: () async {
                                      await cartController.add(
                                          cartController.data[index].itemsId!);
                                      cartController.refreshPage();
                                    },
                                    onRemove: () async {
                                      await cartController.delete(
                                          cartController.data[index].itemsId!);
                                      cartController.refreshPage();
                                    },
                                    imageName:
                                        "${cartController.data[index].itemsImage}",
                                    name:
                                        "${cartController.data[index].itemsName}",
                                    price:
                                        "${cartController.data[index].itemsprice} ${AppTextAsset.theCurrency}",
                                    count:
                                        "${cartController.data[index].countitems}"),
                                Divider(),
                              ],
                            ),
                          ),
                          SizedBox(height: 25.h),
                          // Add "Continue Shopping" button
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Continue Shopping".tr),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
