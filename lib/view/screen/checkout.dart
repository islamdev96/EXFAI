import '../../all_export.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    CheckoutController controller = Get.put(CheckoutController());
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text("checkout".tr),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: MaterialButton(
          color: AppColor.primary,
          textColor: Colors.white,
          onPressed: () {
            controller.checkout();
          },
          child: Text(
            "checkout".tr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              color: AppColor.white,
            ),
          ),
        ),
      ),
      body: GetBuilder<CheckoutController>(
        builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                // ...other widgets...
                if (controller.deliveryType == "0")
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ...other widgets...
                      ...List.generate(
                        controller.dataaddress.length,
                        (index) => InkWell(
                          onTap: () {
                            controller.chooseShippingAddress(
                              controller.dataaddress[index].addressId!,
                            );
                          },
                          child: CardShppingAddressCheckout(
                            title:
                                "${controller.dataaddress[index].addressName}",
                            body:
                                "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                            isactive: controller.addressid ==
                                    controller.dataaddress[index].addressId
                                ? true
                                : false,
                            onCancel: () {
                              // Handle canceling the selected address here
                              controller.cancelShippingAddress();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
