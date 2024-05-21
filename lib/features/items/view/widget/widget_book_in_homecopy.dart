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
    return GetBuilder<FavoriteController>(builder: (favoriteController) {
      var itemsId = itemsModel.itemsId!;

      return InkWell(
        onTap: () {
          controller.goToPageProductDetails(itemsModel);
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
                    Text(
                      translateDatabase(
                          itemsModel.itemsNameAr, itemsModel.itemsName),
                      style: const TextStyle(
                          color: AppColors.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "${itemsModel.itemsPrice} ${AppTextAsset.theCurrency}",
                      style: const TextStyle(
                        color: AppColors.red,
                        fontSize: 16,
                      ),
                    ),
                    GetBuilder<FavoriteController>(
                      // GetBuilder جديد
                      builder: (controller) {
                        return IconButton(
                          onPressed: () async {
                            if (FavoriteController.favoriteItemsIds
                                .contains(itemsId)) {
                              await controller.removeFavorite(itemsId);
                            } else {
                              await controller.addFavorite(itemsId);
                            }
                          },
                          icon: Icon(
                            FavoriteController.favoriteItemsIds
                                    .contains(itemsId)
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
