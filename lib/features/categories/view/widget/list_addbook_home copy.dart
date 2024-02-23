import '../../../../all_export.dart';

class ListAddBookHome extends GetView<HomeControllerImp> {
  const ListAddBookHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.builder(
        itemCount: controller.addbook.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return AddBookHome(
            addBookModel: AddBookModel.fromJson(controller.addbook[i]),
          );
        },
      ),
    );
  }
}

class AddBookHome extends StatefulWidget {
  final AddBookModel addBookModel;
  const AddBookHome({super.key, required this.addBookModel});

  @override
  State<AddBookHome> createState() => _AddBookHomeState();
}

class _AddBookHomeState extends State<AddBookHome> {
  @override
  Widget build(BuildContext context) {
    final description = widget.addBookModel.addbookDescription!;
    final firstFiveWords = description.split(' ').take(5).join(' ');

    return InkWell(
      onTap: () {
        // Navigate to the ProductDetails page with the selected item's model
        Get.toNamed("productdetails", arguments: {
          "addBookModel": widget.addBookModel,
          // "price": addBookModel.addbookPriceDiscount! * quantity,
        });
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl:
                    "${AppLink.imagesAddBook}/${widget.addBookModel.addbookImage}",
                height: 150,
                width: 250,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.addBookModel.addbookTitle}",
                  style: TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  firstFiveWords,
                  style: const TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "${widget.addBookModel.addbookAuthor}",
                  style: const TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "${widget.addBookModel.addbookCity}",
                  style: const TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "${widget.addBookModel.addbookPrice}",
                  style: const TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "${widget.addBookModel.addbookCategoriesid}",
                  style: const TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
