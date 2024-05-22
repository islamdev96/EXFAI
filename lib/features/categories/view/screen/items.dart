// ignore_for_file: unused_local_variable

import 'package:exfai/features/categories/view/widget/widget_book_in_homecopy.dart';

import '../../../../all_export.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  late ItemsControllerImp controller;
  late FavoriteController controllerFavorite;
  @override
  void initState() {
    super.initState();
    controller = Get.put(ItemsControllerImp());
    controllerFavorite = Get.put(FavoriteController());
  }

  @override
  void dispose() {
    Get.delete<ItemsControllerImp>(); // Dispose controller
    Get.delete<FavoriteController>(); // Dispose controller
    super.dispose();
  }

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
            ),
          ),
        ],
      ),
    );
  }
}
