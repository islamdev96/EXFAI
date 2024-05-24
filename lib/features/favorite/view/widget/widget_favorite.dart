import '../../../../all_export.dart';

class WidgetFavorite extends GetView<MyFavoriteController> {
  final FavoriteModel favoriteModel;

  // final bool active;
  const WidgetFavorite({super.key, required this.favoriteModel});

  @override
  Widget build(BuildContext context) {
    // final title = bookModel.bookTitle!;
    // final firstFiveWords = title.split(' ').take(5).join(' ');

    return InkWell(
        onTap: () {
          () {
            Get.toNamed(AppRoute.productDetails, arguments: {
              "bookModel": favoriteModel,
            });
          };
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CachedNetworkImage(
                      imageUrl:
                          "${AppLink.imagestItems}/${favoriteModel.itemsImage!}",
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    child: Text(
                      "${favoriteModel.itemsName}",
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${favoriteModel.itemsPrice} ${"egp".tr}",
                          style: TextStyle(
                              color: AppColors.red,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "sans")),
                      GetBuilder<MyFavoriteController>(
                        builder: (controller) => IconButton(
                          onPressed: () async {
                            controller.removeFromFavorites(
                              favoriteModel.favoriteId!.toString(),
                              favoriteModel.itemsId.toString(),
                            );
                          },
                          icon: const Icon(
                            Icons.delete_outline_outlined,
                            color: AppColors.red,
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ));
  }
}
