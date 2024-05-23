// ignore_for_file: library_private_types_in_public_api

import '../../../../../all_export.dart';

class ItemsHome extends StatefulWidget {
  final ItemsModel itemsModel;
  const ItemsHome({super.key, required this.itemsModel});

  @override
  _ItemsHomeState createState() => _ItemsHomeState();
}

class _ItemsHomeState extends State<ItemsHome> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("productdetails", arguments: {
          "itemsmodel": widget.itemsModel,
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          height: 10.h,
          width: 150.w,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 17),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CustomCachedNetworkImage(
                      imageUrl:
                          "${AppLink.imagestItems}/${widget.itemsModel.itemsImage}",
                      width: 80.w,
                      height: 80.h,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image with White Background
                    // Plus Icon
                    IconButton(
                      color: AppColors.primary,
                      onPressed: () {
                        // Add item functionality
                      },
                      icon: const Icon(Icons.add_circle_outline, size: 30),
                    ),
                    Text(
                      "${widget.itemsModel.itemsPrice} ${AppTextAsset.theCurrency}",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    // Product Name
                    Text(
                      translateDatabase(
                        widget.itemsModel.itemsNameAr,
                        widget.itemsModel.itemsName,
                      ),
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
