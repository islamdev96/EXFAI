// ignore_for_file: unused_local_variable

import 'package:exfai/features/categories/view/widget/widget_book_in_homecopy.dart';

import '../../../../all_export.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller = Get.put(ItemsControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const PageAppBar(),
          const TitleAndPictureAtTheHeadOfThePage(
            title: "تصانيف الكتب",
            imageUrl: AppImageAsset.appLogo,
          ),
          SizedBox(height: 15.h),
          const ListCategories(),
          GetBuilder<ItemsControllerImp>(
            builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                // Use ListView.builder for better performance
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.data.length,
                itemBuilder: (BuildContext context, index) {
                  return WidgetItemsInHome2(
                    itemsModel: ItemsModel.fromJson(controller.data[index]),
                  );
                },
              ),
              // widget: GridView.builder(
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   itemCount: controller.data.length,
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2, childAspectRatio: 0.7),
              //   itemBuilder: (BuildContext context, index) {
              //     controllerFav.isFavorite[controller.data[index]['items_id']] =
              //         controller.data[index]['favorite'];
              //     return CustomListItems(
              //       itemsModel: ItemsModel.fromJson(controller.data[index]),
              //     );
              //   },
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
