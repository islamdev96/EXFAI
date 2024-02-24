import '../../all_export.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

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
              widget: _buildProductDetails(controller.addBookModel, controller),
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
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(AppRoute.cart);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.withOpacity(0.2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
          "انتقل إلى السلة".tr,
          style: const TextStyle(
            color: AppColor.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildProductDetails(
      AddBookModel addBookModel, ProductDetailsControllerImp controller) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PriceAndCountItems(
            onAdd: () => controller.add(),
            onRemove: () => controller.remove(),
            price: "${addBookModel.addbookPrice}",
            count: "${controller.countitems}",
          ),
          const SizedBox(height: 10),
          _buildDetail("العنوان", addBookModel.addbookTitle),
          _buildDetail("المؤلف", addBookModel.addbookAuthor),
          _buildDetail("الفئة", addBookModel.categoriesName),
          _buildDetail("الخصم", addBookModel.addbookDiscount),
          _buildDetail("العدد المتاح", addBookModel.addbookCount),
          _buildDetail("وسيلة التواصل", addBookModel.addbookCommunication),
          _buildDetail("المدينة", addBookModel.addbookCity),
          _buildDetail("الوصف", addBookModel.addbookDescription),
          _buildDetail("التاريخ", addBookModel.addbookDate),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildDetail(String title, String? value) {
    return Text(
      "$title: ${value ?? 'غير متاح'}",
      style: const TextStyle(
        color: AppColor.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
