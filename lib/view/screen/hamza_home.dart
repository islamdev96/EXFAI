import 'package:exfai/features/search/view/screen/list_search.dart';
import 'package:exfai/view/widget/home/list_categories_home.dart';

import '../../all_export.dart';

class HamzaHome extends StatefulWidget {
  const HamzaHome({super.key});

  @override
  State<HamzaHome> createState() => _HamzaHomeState();
}

class _HamzaHomeState extends State<HamzaHome> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: !controller.isSearch
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PageAppBar(),
                          const CustomCardHome(
                            title: 'يا هلا بك في همزة',
                            imageUrl: 'assets/images/66.png',
                          ),

                          CustomAppBar(
                            mycontroller: controller.search!,
                            titleappbar: "ابحث عن الكتاب",
                            onPressedSearch: () {
                              controller.onSearchItems();
                            },
                            onChanged: (val) {
                              controller.checkSearch(val);
                            },
                          ),
                          SizedBox(height: 30.h),
                          Center(
                            child: Text(
                              'ابحث عن كتاب مستعمل',
                              style: TextStyle(
                                  color: AppColor.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Text(
                              'او اعرض كتابك',
                              style: TextStyle(
                                  color: AppColor.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          SizedBox(height: 30.h),

                          const ListCategoriesHome(),
                          // const ListItemsHome(),
                          const ListAddBookHome(), // تم استبدال ListItemsHome بـ ListAddBookHome

                          // const ListAddBookHome(), // تم استبدال ListItemsHome بـ ListAddBookHome
                        ],
                      )
                    : ListSearch(listdatamodel: controller.listdata)),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}

// class ListItemsSearch extends GetView<HomeControllerImp> {
//   final List<AddBookModel> listdatamodel;
//   const ListItemsSearch({super.key, required this.listdatamodel});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: listdatamodel.length,
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemBuilder: (context, index) {
//         return InkWell(
//           onTap: () {
//             controller.goToPageProductDetails(listdatamodel[index]);
//           },
//           child: Container(
//             margin: const EdgeInsets.symmetric(vertical: 20),
//             child: Card(
//               child: Container(
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     Expanded(
//                         child: CachedNetworkImage(
//                       imageUrl:
//                           "${AppLink.imagesAddBook}/${listdatamodel[index].addbookImage!}",
//                     )),
//                     Expanded(
//                       flex: 2,
//                       child: ListTile(
//                         title: Text(listdatamodel[index].addbookTitle!),
//                         subtitle:
//                             Text(listdatamodel[index].addbookDescription!),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
