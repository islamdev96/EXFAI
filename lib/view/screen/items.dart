// ignore_for_file: unused_local_variable

import '../../all_export.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller = Get.put(ItemsControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          // CustomAppBar(
          //   mycontroller: controller.search!,
          //   titleappbar: "findYourProduct".tr,
          //   // onPressedIcon: () {},
          //   onPressedSearch: () {
          //     controller.onSearchItems();
          //   },
          //   onChanged: (val) {
          //     controller.checkSearch(val);
          //   },
          //   onPressedIconFavorite: () {
          //     Get.toNamed(AppRoute.myFavroite);
          //   },
          // ),
          const SizedBox(height: 20),
          const ListCategoriesItems(),
          GetBuilder<ItemsControllerImp>(
              builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: !controller.isSearch
                      ? GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.data.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.7),
                          itemBuilder: (BuildContext context, index) {
                            controllerFav.isFavorite[controller.data[index]
                                    ['items_id']] =
                                controller.data[index]['favorite'];
                            return CustomListItems(
                                itemsModel: ItemsModel.fromJson(
                                    controller.data[index]));
                          })
                      : ListItemsSearch(listdatamodel: controller.listdata)))
        ]),
      ),
    );
  }
}





















// favoriteController.isFavorite[controller.data[index]
                            // ['items_id']] = controller.data[index]['favorite'];
