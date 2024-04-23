import '../../../all_export.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  // final bool active;
  const CustomListItems({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    final String minute = "minute".tr;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: InkWell(
        onTap: () {
          controller.goToPageProductDetails(itemsModel);
        },
        child: Card(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Hero(
                        tag: "${itemsModel.itemsId}",
                        child: CachedNetworkImage(
                          imageUrl:
                              "${AppLink.imagestItems}/${itemsModel.itemsImage!}",
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                          translateDatabase(
                              itemsModel.itemsNameAr, itemsModel.itemsName),
                          style: const TextStyle(
                              color: AppColors.secondaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "23 - 50 ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "sans",
                              color: AppColors.secondaryText,
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: const Icon(
                                Icons.timer_sharp,
                                color: AppColors.secondaryText,
                              )),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "${controller.deliverytime} $minute ",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: "sans",
                              color: AppColors.secondaryText,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${itemsModel.itemsPriceDiscount} \$",
                              style: const TextStyle(
                                  color: AppColors.secondaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "sans")),
                          GetBuilder<FavoriteController>(
                              builder: (controller) => IconButton(
                                  onPressed: () {
                                    if (controller
                                            .isFavorite[itemsModel.itemsId] ==
                                        "1") {
                                      controller.setFavorite(
                                          itemsModel.itemsId, "0");
                                      controller
                                          .removeFavorite(itemsModel.itemsId!);
                                    } else {
                                      controller.setFavorite(
                                          itemsModel.itemsId, "1");
                                      controller
                                          .addFavorite(itemsModel.itemsId!);
                                    }
                                  },
                                  icon: Icon(
                                    controller.isFavorite[itemsModel.itemsId] ==
                                            "1"
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                    color: AppColors.red,
                                  )))
                        ],
                      )
                    ]),
              ),
              if (itemsModel.itemsDiscount != "0")
                Positioned(
                    top: 4,
                    left: 4,
                    child: Image.asset(
                      AppImageAsset.saleOne,
                      width: 40,
                    ))
            ],
          ),
        ),
      ),
    );
  }
}






























// logical thinking

  // GetBuilder<FavoriteController>(
  //                         builder: (controller) => IconButton(
  //                             onPressed: () {
  //                                 if (controller.isFavorite[itemsModel.itemsId] == "1" ) {
  //                                   controller.setFavorite(
  //                                       itemsModel.itemsId, "0");
  //                                 } else {
  //                                   controller.setFavorite(
  //                                       itemsModel.itemsId, "1");
  //                                 }
  //                             },
  //                             icon: Icon(
  //                               controller.isFavorite[itemsModel.itemsId] == "1"
  //                                   ? Icons.favorite
  //                                   : Icons.favorite_border_outlined,
  //                               color: AppColor.primaryColor,
  //                             )))