// ignore_for_file: unused_local_variable

import 'package:exfai/all_export.dart';
import 'package:exfai/controller/offer_controller.dart';
import 'package:exfai/view/widget/offer/custumitem_offer.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    OffersController controller = Get.put(OffersController());
    FavoriteController controllerFav = Get.put(FavoriteController());
    return GetBuilder<OffersController>(
        builder: (controller) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(children: [
                CustomAppBar(
                  mycontroller: controller.search!,
                  titleappbar: "findYourProduct".tr,
                  // onPressedIcon: () {},
                  onPressedSearch: () {
                    controller.onSearchItems();
                  },
                  onChanged: (val) {
                    controller.checkSearch(val);
                  },
                  // onPressedIconFavorite: () {
                  //   Get.toNamed(AppRoute.myFavroite);
                  // },
                ),
                const SizedBox(height: 20),
                controller.isSearch
                    ? HandlingDataView(
                        statusRequest: controller.statusRequest,
                        widget: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller.data.length,
                          itemBuilder: ((context, index) {
                            return CustomListItemsOffer(
                                addBookModel: controller.data[index]);
                          }),
                        ),
                      )
                    : HandlingDataView(
                        statusRequest: controller.statusRequest,
                        widget: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: controller.data.length,
                            itemBuilder: ((context, index) {
                              return CustomListItemsOffer(
                                  addBookModel: controller.data[index]);
                            }))),
              ]),
            ));
  }
}
