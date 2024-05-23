import '../../../../../all_export.dart';

class CustomItemsCartList extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  final String imageName;
  final VoidCallback? onAdd;
  final VoidCallback? onRemove;

  const CustomItemsCartList({
    super.key,
    required this.name,
    required this.price,
    required this.count,
    required this.imageName,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CachedNetworkImage(
                imageUrl: "${AppLink.imagestItems}/$imageName",
                height: 85.h,
                width: 80.w,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 22.0,
                          height: 1.1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        AppTextAsset.theCurrency,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 6.0,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Tooltip(
                  message: "Add Item",
                  child: IconButton(
                    iconSize: 32,
                    color: AppColors.primary,
                    onPressed: onAdd,
                    icon: const Icon(Icons.add_box_rounded),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  count,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: 10.h),
                Tooltip(
                  message: "Remove Item",
                  child: IconButton(
                    iconSize: 32,
                    color: AppColors.primary,
                    onPressed: onRemove,
                    icon: const Icon(Icons.remove_circle),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
