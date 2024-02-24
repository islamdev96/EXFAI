import '../../../../all_export.dart';

class WidgetListAddBookHome extends StatelessWidget {
  final AddBookModel addBookModel;
  const WidgetListAddBookHome({super.key, required this.addBookModel});

  @override
  Widget build(BuildContext context) {
    final author = addBookModel.addbookAuthor!;
    final firstFiveWords = author.split(' ').take(3).join(' ');

    return InkWell(
      onTap: () {
        // Navigate to the ProductDetails page with the selected item's model
        Get.toNamed("productdetails", arguments: {
          "addBookModel": addBookModel,
          // "price": addBookModel.addbookPriceDiscount! * quantity,
        });
      },
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl:
                    "${AppLink.imagesAddBook}/${addBookModel.addbookImage}",
                height: MediaQuery.of(context).size.height * 0.2.h,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 20.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${addBookModel.addbookTitle}",
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 16.sp,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$${addBookModel.addbookPrice}",
                      style: const TextStyle(
                        color: AppColor.primary,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
