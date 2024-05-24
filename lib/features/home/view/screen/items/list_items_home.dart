// ignore_for_file: library_private_types_in_public_api

import '../../../../../all_export.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350, // زيادة الارتفاع قليلاً لإظهار التصميم بشكل أفضل
      child: ListView.builder(
        itemCount: controller.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return ItemsHome(
            itemsModel: ItemsModel.fromJson(controller.items[i]),
          );
        },
        // shrinkWrap: true, // Important to avoid height errors
        // physics:
        //     const NeverScrollableScrollPhysics(), // Disable scrolling to avoid conflicts
      ),
    );
  }
}
