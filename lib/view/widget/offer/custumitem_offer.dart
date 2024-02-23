import 'package:exfai/addbook/data/model/addbook_model.dart';
import 'package:exfai/controller/offer_controller.dart';

import '../../../all_export.dart';

class CustomListItemsOffer extends GetView<OffersController> {
  final AddBookModel addBookModel;
  // final bool active;
  const CustomListItemsOffer({super.key, required this.addBookModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
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
                        tag: "${addBookModel.addbookId}",
                        child: CachedNetworkImage(
                          imageUrl:
                              "${AppLink.imagesAddBook}/${addBookModel.addbookImage!}",
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                          translateDatabase(addBookModel.addbookTitle,
                              addBookModel.addbookTitle),
                          style: const TextStyle(
                              color: AppColor.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${addBookModel.addbookPrice} \$",
                              style: const TextStyle(
                                  color: AppColor.secondaryBackground,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "sans")),
                          GetBuilder<FavoriteController>(
                              builder: (controller) => IconButton(
                                  onPressed: () {
                                    if (controller.isFavorite[
                                            addBookModel.addbookId] ==
                                        "1") {
                                      controller.setFavorite(
                                          addBookModel.addbookId, "0");
                                      controller.removeFavorite(
                                          addBookModel.addbookId!);
                                    } else {
                                      controller.setFavorite(
                                          addBookModel.addbookId, "1");
                                      controller
                                          .addFavorite(addBookModel.addbookId!);
                                    }
                                  },
                                  icon: Icon(
                                    controller.isFavorite[
                                                addBookModel.addbookId] ==
                                            "1"
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                    color: AppColor.secondaryBackground,
                                  )))
                        ],
                      )
                    ]),
              ),
              // if (addBookModel.addbookPriceDiscount != "0")
              Positioned(
                  top: 4,
                  left: 4,
                  child: Image.asset(
                    AppImageAsset.saleOne,
                    width: 40,
                  ))
            ],
          ),
        ));
  }
}
