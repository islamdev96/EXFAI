// ignore_for_file: unused_import

import 'package:exfai/view/search_text_field.dart';

import '../../../../all_export.dart';

class AddBookInCategories extends StatefulWidget {
  const AddBookInCategories({super.key});

  @override
  State<AddBookInCategories> createState() => _AddBookInCategoriesState();
}

class _AddBookInCategoriesState extends State<AddBookInCategories> {
  late AddBookControllerImp controller;
  late FavoriteController controllerFavorite;

  @override
  void initState() {
    super.initState();
    controller = Get.put(AddBookControllerImp());
    controllerFavorite = Get.put(FavoriteController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 20),
          const SearchTextField(),
          const SizedBox(height: 20),
          const ListCategoriesAddBook(),
          GetBuilder<AddBookControllerImp>(
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
                        controllerFavorite.isFavorite[controller.data[index]
                                ['addbook_id']] =
                            controller.data[index]['favorite'];
                        return WidgetAddBookInCategories(
                          addBookModel:
                              AddBookModel.fromJson(controller.data[index]),
                        );
                      },
                    )
                  : const SearchTextField(), // Empty container instead of search_screen.ListSearch
            ),
          ),
        ],
      ),
    );
  }
}


// class AddBookInCategories extends StatefulWidget {
//   const AddBookInCategories({
//     super.key,
//   });

//   @override
//   State<AddBookInCategories> createState() => _AddBookInCategoriesState();
// }

// class _AddBookInCategoriesState extends State<AddBookInCategories> {
//   @override
//   Widget build(BuildContext context) {
//     final AddBookControllerImp controller = Get.put(
//         AddBookControllerImp()); // تغيير الاسم من AddBookControllerImp إلى AddBookControllerImp
//     final FavoriteController controllerFav = Get.put(FavoriteController());

//     return Scaffold(
//       backgroundColor: AppColor.scaffoldBackgroundColor,
//       body: ListView(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(height: 50.h),
//               const ListCategoriesAddBook(),
//               GetBuilder<AddBookControllerImp>(
//                 // تغيير النوع إلى AddBookControllerImp
//                 builder: (controller) => HandlingDataView(
//                   statusRequest: controller.statusRequest,
//                   widget: !controller.isSearch
//                       ? GridView.builder(
//                           shrinkWrap: true,
//                           physics: const NeverScrollableScrollPhysics(),
//                           itemCount: controller.data.length,
//                           gridDelegate:
//                               const SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 2,
//                             childAspectRatio: 0.75,
//                           ),
//                           itemBuilder: (BuildContext context, index) {
//                             final AddBookModel addBookModel =
//                                 AddBookModel.fromJson(controller.data[index]);
//                             controllerFav.isFavorite[addBookModel.addbookId] =
//                                 controller.data[index]['favorite'];
//                             return WidgetAddBookInCategories(
//                               addBookModel: addBookModel,
//                               active: bool.fromEnvironment(
//                                   controller.data[index]['active']),
//                             );
//                           },
//                         )
//                       : search_screen.ListSearch(
//                           listdatamodel: controller.listdata),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
















// favoriteController.isFavorite[controller.data[index]
                            // ['items_id']] = controller.data[index]['favorite'];
