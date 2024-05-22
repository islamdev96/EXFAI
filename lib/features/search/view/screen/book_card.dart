import '../../../../all_export.dart';

class ItemsCard extends StatelessWidget {
  final ItemsModel items;

  const ItemsCard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.find<HomeControllerImp>().goToPageProductDetails(items);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              items.categoriesName!,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
