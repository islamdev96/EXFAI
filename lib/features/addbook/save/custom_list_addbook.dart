// import '../../../../all_export.dart';

// class CustomListAddBook extends GetView<AddBookControllerImp> {
//   final AddBookModel addBookModel;

//   const CustomListAddBook({super.key, required this.addBookModel});

//   @override
//   Widget build(BuildContext context) {
//     final title = addBookModel.addbookTitle!;
//     final firstFiveWords = title.split(' ').take(5).join(' ');
//     return Card(
//       elevation: 5,
//       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       child: InkWell(
//         onTap: () => controller.goToPageProductDetails(addBookModel),
//         child: Card(
//           clipBehavior: Clip.none,
//           child: Stack(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(7),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Hero(
//                         tag: "${addBookModel.addbookId}",
//                         child: CachedNetworkImage(
//                           imageUrl:
//                               "${AppLink.imagesAddBook}/${addBookModel.addbookImage!}",
//                           height: 110.h,
//                           width: double.infinity,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                       SizedBox(height: 10.h),
//                       Text(
//                         firstFiveWords,
//                         style: TextStyle(
//                           color: AppColor.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12.sp,
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "${addBookModel.addbookPrice}\$",
//                             style: TextStyle(
//                               color: AppColor.primary,
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           GetBuilder<FavoriteController>(
//                             builder: (controller) => IconButton(
//                               onPressed: () {
//                                 if (controller
//                                         .isFavorite[addBookModel.addbookId] ==
//                                     "1") {
//                                   controller.setFavorite(
//                                       addBookModel.addbookId, "0");
//                                   // controller
//                                   // .removeFavorite(addBookModel.addbookId!);
//                                 } else {
//                                   controller.setFavorite(
//                                       addBookModel.addbookId, "1");
//                                   controller
//                                       .addFavorite(addBookModel.addbookId!);
//                                 }
//                               },
//                               icon: Icon(
//                                 controller.isFavorite[addBookModel.addbookId] ==
//                                         "1"
//                                     ? Icons.favorite
//                                     : Icons.favorite_border_outlined,
//                                 color: AppColor.red,
//                               ),
//                             ),
//                           )
//                         ],
//                       )
//                     ]),
//               ),
//               if (addBookModel.addbookDiscount != null &&
//                   int.parse(addBookModel.addbookDiscount!) >= 2)
//                 Positioned(
//                   top: 0.01,
//                   left: 0.01,
//                   child: Image.asset(
//                     AppImageAsset.saleOne,
//                     width: 40.w,
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
