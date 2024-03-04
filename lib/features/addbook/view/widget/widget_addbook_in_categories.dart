import '../../../../all_export.dart';

class WidgetAddBookInCategories extends GetView<AddBookControllerImp> {
  final AddBookModel addBookModel;
  // final bool active;

  const WidgetAddBookInCategories({super.key, required this.addBookModel});

  @override
  Widget build(BuildContext context) {
    final title = addBookModel.addbookTitle!;
    final firstFiveWords = title.split(' ').take(5).join(' ');
    return InkWell(
      onTap: () => controller.goToPageProductDetails(addBookModel),
      child: Card(
        clipBehavior: Clip.none,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(7),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: "${addBookModel.addbookId}",
                      child: CachedNetworkImage(
                        imageUrl:
                            "${AppLink.imagesAddBook}/${addBookModel.addbookImage!}",
                        height: 110.h,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      firstFiveWords,
                      style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.spMax,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "\$${addBookModel.addbookPrice}",
                          style: TextStyle(
                            color: AppColor.primary,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
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
                    )
                  ]),
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
