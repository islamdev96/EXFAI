// product_details_bottom_bar.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../all_export.dart';

class ProductDetailsBottomBar extends StatelessWidget {
  const ProductDetailsBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: AppColors.primary,
              onPressed: () {
                // Get.find<ProductDetailsControllerImp>().addToCart();
              },
              child: Text(
                "addToCart".tr,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: AppColors.scaffoldBackgroundColor,
              onPressed: () {
                Get.toNamed(AppRoute.cart);
              },
              child: Text(
                "goToCart".tr,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// product_details_content.dart

class ProductDetailsContent extends StatelessWidget {
  const ProductDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductDetailsControllerImp>();

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${translateDatabase(controller.itemsModel.itemsNameAr, controller.itemsModel.itemsName)}",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: AppColors.primary),
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
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.primary,
                ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
