// ignore_for_file: unused_import

import 'package:exfai/features/search/view/screen/list_search.dart'
    as search_screen;
import 'package:exfai/features/search/view/screen/list_search.dart';

import '../../../../all_export.dart';

class AddBookInCategories extends StatelessWidget {
  const AddBookInCategories({super.key});

  @override
  Widget build(BuildContext context) {
    AddBookControllerImp controller = Get.put(AddBookControllerImp());
    FavoriteController controllerFavorite = Get.put(FavoriteController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
            myController: controller.search!,
            titleAppBar: "ابحث عن الكتاب",
            onPressedSearch: () {
              controller.onSearchItems();
            },
            onChanged: (val) {
              controller.checkSearch(val);
            },
            // onPressedIconFavorite: () {
            //   Get.toNamed(AppRoute.myfavroite);
            // },
          ),
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
                                  crossAxisCount: 2, childAspectRatio: 0.7),
                          itemBuilder: (BuildContext context, index) {
                            controllerFavorite.isFavorite[controller.data[index]
                                    ['addbook_id']] =
                                controller.data[index]['favorite'];
                            return WidgetAddBookInCategories(
                              addBookModel:
                                  AddBookModel.fromJson(controller.data[index]),
                            );
                          })
                      : ListSearch(listdatamodel: controller.listdata)))
        ]),
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
