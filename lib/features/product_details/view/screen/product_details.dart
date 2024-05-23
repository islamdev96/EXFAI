// ignore_for_file: unused_local_variable

import '../../../../all_export.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductDetailsControllerImp());

    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: GetBuilder<ProductDetailsControllerImp>(
        builder: (controller) => Column(
          children: [
            Expanded(
              // Allow content to fill available space
              child: ListView(
                children: [
                  const TopProductPageDetails(),
                  SizedBox(height: 100.h),
                  HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: _buildProductDetails(context, controller),
                  ),
                  CustomButtonCart(
                    buttonColor: AppColors.primary3,
                    textbutton: "goToCart".tr,
                    onPressed: () {
                      Get.toNamed(AppRoute.cart);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductDetails(
      BuildContext context, ProductDetailsControllerImp controller) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h),
          Text(
            "${translateDatabase(controller.itemsModel.itemsNameAr, controller.itemsModel.itemsName)}",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: AppColors.primary2,
                ),
          ),
          SizedBox(height: 15.h),
          PriceAndCountItems(
            onAdd: controller.add,
            onRemove: controller.remove,
            count: "${controller.countitems}",
          ),
          PriceWithCurrency(
            priceFontSize: 30,
            price: "${controller.itemsModel.itemsPrice}",
            color: AppColors.red,
          ),
          SizedBox(height: 35.h),
          Text(
            "${translateDatabase(controller.itemsModel.itemsDescAr, controller.itemsModel.itemsDesc)}",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: AppColors.secondaryText,
                ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
