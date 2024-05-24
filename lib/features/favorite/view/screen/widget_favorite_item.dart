import '../../../../all_export.dart';

class WidgetFavoriteItem extends StatelessWidget {
  final ItemsModel itemsModel;
  final String favoriteId;

  const WidgetFavoriteItem({
    super.key,
    required this.itemsModel,
    required this.favoriteId,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.offAndToNamed(AppRoute.productDetails, arguments: {
          "itemsModel": itemsModel,
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
              offset: const Offset(0, 3),
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
                    itemsModel.itemsName ?? 'عنوان غير معروف',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "${itemsModel.itemsPrice} ${"egp".tr}",
                    style: const TextStyle(
                      color: AppColors.red,
                      fontSize: 16,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        Get.find<MyFavoriteController>().removeFromFavorites(
                          favoriteId,
                          itemsModel.itemsId.toString(),
                        );
                      },
                      icon: const Icon(
                        Icons.delete_outline_outlined,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
