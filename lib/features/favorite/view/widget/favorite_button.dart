// ignore_for_file: unused_local_variable

import '../../../../all_export.dart';

class FavoriteButton extends StatelessWidget {
  final ItemsModel itemsModel;

  const FavoriteButton({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    var bookId = itemsModel.itemsId!;

    FavoriteController controller = Get.put(
      FavoriteController(),
      permanent: true,
    );

    return GetBuilder<FavoriteController>(
      builder: (controller) => IconButton(
        onPressed: () async {
          if (FavoriteController.favoriteItemsIds.contains(bookId)) {
            await controller.removeFavorite(bookId);
          } else {
            await controller.addFavorite(bookId);
          }
        },
        icon: Icon(
          FavoriteController.favoriteItemsIds.contains(bookId)
              ? Icons.favorite
              : Icons.favorite_border_outlined,
          color: AppColors.red,
        ),
      ),
    );
  }
}
