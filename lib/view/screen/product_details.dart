import '../../all_export.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductDetailsControllerImp());

    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: GetBuilder<ProductDetailsControllerImp>(
        builder: (controller) => ListView(
          children: [
            const TopProductPageDetails(),
            const SizedBox(height: 100),
            HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: _buildProductDetails(context, controller),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 40,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColor.primaryBackground,
        onPressed: () {
          Get.toNamed(AppRoute.cart);
        },
        child: Text(
          "goToCart".tr,
          style: const TextStyle(
            color: AppColor.primaryText,
            fontWeight: FontWeight.bold,
          ),
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
          Text(
            "${translateDatabase(controller.itemsModel.itemsNameAr, controller.itemsModel.itemsName)}",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: AppColor.primaryText,
                ),
          ),
          const SizedBox(height: 10),
          PriceAndCountItems(
            onAdd: controller.add,
            onRemove: controller.remove,
            price: "${controller.itemsModel.itemsPrice}",
            count: "${controller.countitems}",
          ),
          const SizedBox(height: 10),
          Text(
            "${translateDatabase(controller.itemsModel.itemsDescAr, controller.itemsModel.itemsDesc)}",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: AppColor.primaryText,
                ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
