// ignore_for_file: library_private_types_in_public_api

import '../../../all_export.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: controller.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return ItemsHome(
            itemsModel: ItemsModel.fromJson(controller.items[i]),
          );
        },
      ),
    );
  }
}

class ItemsHome extends StatefulWidget {
  final ItemsModel itemsModel;
  const ItemsHome({super.key, required this.itemsModel});

  @override
  _ItemsHomeState createState() => _ItemsHomeState();
}

class _ItemsHomeState extends State<ItemsHome> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to the ProductDetails page with the selected item's model
        Get.toNamed("productdetails", arguments: {
          "itemsmodel": widget.itemsModel,
          // "price": widget.itemsModel.itemsPriceDiscount! * quantity,
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                "${AppLink.imagestItems}/${widget.itemsModel.itemsImage}",
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
                  "${translateDatabase(widget.itemsModel.itemsNameAr, widget.itemsModel.itemsName)}",
                  style: TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
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
