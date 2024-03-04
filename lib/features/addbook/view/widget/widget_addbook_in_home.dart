import '../../../../all_export.dart';

class WidgetAddBookInHome extends StatelessWidget {
  final AddBookModel addBookModel;
  WidgetAddBookInHome({super.key, required this.addBookModel});
  final FavoriteController controller = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    final title = addBookModel.addbookTitle!;
    final firstFiveWordsTitle = title.split(' ').take(5).join(' ');
    // final city = addBookModel.addbookCity!;
    // final firstFiveWordsCity = city.split(' ').take(2).join(' ');

    return InkWell(
      onTap: () {
        // Navigate to the ProductDetails page with the selected item's model
        Get.toNamed("productdetails", arguments: {
          "addBookModel": addBookModel,
          // "price": addBookModel.addbookPriceDiscount! * quantity,
        });
      },
      child: Card(
        elevation: 5,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: "${addBookModel.addbookId}",
                  child: CachedNetworkImage(
                    imageUrl:
                        "${AppLink.imagesAddBook}/${addBookModel.addbookImage}",
                    width: 150.w,
                    height: 132.h,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstFiveWordsTitle,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\$${addBookModel.addbookPrice}",
                          style: const TextStyle(
                            color: AppColor.primary,
                            fontSize: 16,
                          ),
                        ),
                        GetBuilder<FavoriteController>(
                          builder: (controller) => IconButton(
                            onPressed: () async {
                              if (controller
                                      .isFavorite[addBookModel.addbookId] ==
                                  "1") {
                                controller.setFavorite(
                                    addBookModel.addbookId, "0");
                                await controller
                                    .removeFavorite(addBookModel.addbookId!);
                              } else {
                                controller.setFavorite(
                                    addBookModel.addbookId, "1");
                                await controller
                                    .addFavorite(addBookModel.addbookId!);
                              }
                              // After adding/removing, update the UI
                              controller.update();
                            },
                            icon: Icon(
                              controller.isFavorite[addBookModel.addbookId] ==
                                      "1"
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: AppColor.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Text(
                    //   firstFiveWordsCity,
                    //   style: TextStyle(
                    //     color: AppColor.black,
                    //     fontSize: 16.sp,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ],
            ),
            if (addBookModel.addbookDiscount != null &&
                int.parse(addBookModel.addbookDiscount!) >= 10)
              Positioned(
                top: 0.01,
                left: 0.01,
                child: Image.asset(
                  AppImageAsset.saleOne,
                  width: 40.w,
                ),
              ),
            if (addBookModel.addbookDiscount != null &&
                int.parse(addBookModel.addbookDiscount!) >= 10)
              Positioned(
                top: 0.01,
                left: 0.01,
                child: Image.asset(
                  AppImageAsset.saleOne,
                  width: 40.w,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
