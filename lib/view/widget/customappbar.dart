import '../../all_export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleAppBar;
  final Function()? onPressedSearch;
  final Function(String)? onChanged;
  final TextEditingController myController;

  const CustomAppBar({
    super.key,
    required this.titleAppBar,
    required this.myController,
    this.onPressedSearch,
    this.onChanged,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextFormField(
        controller: myController,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: titleAppBar,
          prefixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: onPressedSearch,
          ),
        ),
      ),
    );
  }
}

// class ListSearch extends StatelessWidget {
//   final List<AddBookModel> listDataModel;

//   const ListSearch({
//     super.key,
//     required this.listDataModel,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: listDataModel.length,
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemBuilder: (context, index) {
//         return InkWell(
//           onTap: () {
//             Get.find<HomeControllerImp>()
//                 .goToPageProductDetails(listDataModel[index]);
//           },
//           child: Container(
//             margin: const EdgeInsets.symmetric(vertical: 20),
//             child: Card(
//               child: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: CachedNetworkImage(
//                         imageUrl:
//                             "${AppLink.imagesAddBook}/${listDataModel[index].addbookImage!}",
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: ListTile(
//                         title: Text(
//                           listDataModel[index].addbookTitle!,
//                           style: const TextStyle(
//                               color: Color.fromRGBO(0, 0, 0, 1)),
//                         ),
//                         // Add more widgets as needed
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
