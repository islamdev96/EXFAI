import 'package:exfai/data/model/add_book_model.dart';

import '../../all_export.dart';

class Items extends StatelessWidget {
  const Items({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ItemsControllerImp controller = Get.put(ItemsControllerImp());
    final FavoriteController controllerFav = Get.put(FavoriteController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
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
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (BuildContext context, index) {
                          controllerFav.isFavorite[controller.data[index]
                                  ['addbook_id']] =
                              controller.data[index]['favorite'];
                          return CustomListAddBooks(
                            addBookModel:
                                AddBookModel.fromJson(controller.data[index]),
                          );
                        },
                      )
                    : ListItemsSearch(
                        listdatamodel: controller.listdata,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
