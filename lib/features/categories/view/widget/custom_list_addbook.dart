import '../../../../all_export.dart';

class CustomListAddBook extends GetView<AddBookControllerImp> {
  final AddBookModel addBookModel;

  const CustomListAddBook({super.key, required this.addBookModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkWell(
        onTap: () {
          controller.goToPageProductDetails(addBookModel);
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(8),
              //   child: CachedNetworkImage(
              //     imageUrl:
              //         "${AppLink.imagesAddBook}/${addBookModel.addbookImage}",
              //     height: 100,
              //     width: 100,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${addBookModel.addbookTitle}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "${addBookModel.addbookDescription}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Author: ${addBookModel.addbookAuthor}",
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "City: ${addBookModel.addbookCity}",
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Price: ${addBookModel.addbookPrice}",
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
