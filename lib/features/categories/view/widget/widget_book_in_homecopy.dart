// ignore_for_file: unused_local_variable

import '../../../../all_export.dart';

class WidgetItemsInHome2 extends GetView<HomeControllerImp> {
  final ItemsModel itemsModel;

  const WidgetItemsInHome2({
    super.key,
    required this.itemsModel,
  });

  @override
  Widget build(BuildContext context) {
    // final title = itemsModel.itemsTitle ?? 'Unknown Title';
    // final itemsTitle = title.split(' ').take(7).join(' ');
    return GetBuilder<FavoriteController>(
        // Use GetBuilder to rebuild on favorite changes
        builder: (favoriteController) {
      var ItemsId = itemsModel.itemsId!;

      return InkWell(
        onTap: () {
          Get.offAndToNamed(AppRoute.productDetails, arguments: {
            "ItemsModel": itemsModel,
          });
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 1),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CustomCachedNetworkImage(
                  imageUrl: "${AppLink.imagestItems}/${itemsModel.itemsImage}",
                  width: 150.w,
                  height: 200.h,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   ItemsTitle,
                    //   style: TextStyle(
                    //     color: AppColors.black,
                    //     fontSize: 16.sp,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // SizedBox(height: 8.h),
                    // Text(
                    //   "متاح في ${itemsModel.citiesName}",
                    //   style: const TextStyle(
                    //     color: AppColors.grey,
                    //     fontSize: 16,
                    //   ),
                    // ),
                    const SizedBox(height: 8),
                    Text(
                      "${itemsModel.itemsPrice} ${AppTextAsset.theCurrency}",
                      style: const TextStyle(
                        color: AppColors.red,
                        fontSize: 16,
                      ),
                    ),
                    GetBuilder<FavoriteController>(
                      builder: (controller) {
                        return IconButton(
                          onPressed: () async {
                            if (FavoriteController.favoriteItemsIds
                                .contains(ItemsId)) {
                              await controller.removeFavorite(ItemsId);
                            } else {
                              await controller.addFavorite(ItemsId);
                            }
                          },
                          icon: Icon(
                            FavoriteController.favoriteItemsIds
                                    .contains(ItemsId)
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: AppColors.red,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
