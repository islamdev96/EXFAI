import '../../../all_export.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  const CustomListItems({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToPageProductDetails(itemsModel);
      },
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image and Sale Tag
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: "${itemsModel.itemsId}",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CustomCachedNetworkImage(
                        imageUrl:
                            "${AppLink.imagestItems}/${itemsModel.itemsImage!}",
                        height: 120,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  if (itemsModel.itemsDiscount != "0")
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.red,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          "خصم",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),

              // Title
              Text(
                translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsName),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 8),

              // Delivery Time and Price Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Delivery Time
                  Row(
                    children: [
                      const Icon(
                        Icons.delivery_dining,
                        color: AppColors.secondaryText,
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "${controller.deliverytime} ${"minute".tr}",
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColors.secondaryText,
                        ),
                      ),
                    ],
                  ),

                  // Price and Favorite
                  Row(
                    children: [
                      // Price
                      Text(
                        "${itemsModel.itemsPriceDiscount} ${"egp".tr}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(width: 16),

                      // Favorite
                      // GetBuilder<FavoriteController>(
                      //   builder: (controller) => IconButton(
                      //     onPressed: () {
                      //       if (controller.isFavorite[itemsModel.itemsId] ==
                      //           "1") {
                      //         controller.setFavorite(itemsModel.itemsId, "0");
                      //         controller.removeFavorite(itemsModel.itemsId!);
                      //       } else {
                      //         controller.setFavorite(itemsModel.itemsId, "1");
                      //         controller.addFavorite(itemsModel.itemsId!);
                      //       }
                      //     },
                      //     icon: Icon(
                      //       controller.isFavorite[itemsModel.itemsId] == "1"
                      //           ? Icons.favorite
                      //           : Icons.favorite_border_outlined,
                      //       color: AppColors.red,
                      //       size: 24,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
