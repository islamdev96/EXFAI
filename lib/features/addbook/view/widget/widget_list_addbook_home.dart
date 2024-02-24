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
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Center(
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        imageUrl:
                            "${AppLink.imagesAddBook}/${addBookModel.addbookImage}",
                        width: 150.w,
                        height: 132.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "${addBookModel.addbookTitle}",
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          firstFiveWords,
                          style: const TextStyle(
                            color: AppColor.secondaryText,
                            fontSize: 16,
                          ),
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
                      SizedBox(height: 30.h),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
