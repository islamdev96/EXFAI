import 'package:exfai/features/search/view/screen/list_search.dart';

import '../../../../all_export.dart';

class AddBookInCategories extends StatefulWidget {
  const AddBookInCategories({
    super.key,
  });

  @override
  State<AddBookInCategories> createState() => _AddBookInCategoriesState();
}

class _AddBookInCategoriesState extends State<AddBookInCategories> {
  @override
  Widget build(BuildContext context) {
    final AddBookControllerImp controller = Get.put(
        AddBookControllerImp()); // تغيير الاسم من AddBookControllerImp إلى AddBookControllerImp
    final FavoriteController controllerFav = Get.put(FavoriteController());

    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.h),
              const ListCategoriesAddBook(),
              GetBuilder<AddBookControllerImp>(
                // تغيير النوع إلى AddBookControllerImp
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
                            childAspectRatio: 0.75,
                          ),
                          itemBuilder: (BuildContext context, index) {
                            final AddBookModel addBookModel =
                                AddBookModel.fromJson(controller.data[index]);
                            controllerFav.isFavorite[addBookModel.addbookId] =
                                controller.data[index]['favorite'];
                            return WidgetAddBookInCategories(
                              addBookModel: addBookModel,
                            );
                          },
                        )
                      : ListSearch(
                          listdatamodel: controller.listdata,
                        ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
