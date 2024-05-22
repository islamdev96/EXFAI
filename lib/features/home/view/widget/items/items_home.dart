import '../../../../../all_export.dart';

class ItemsHome extends StatefulWidget {
  final ItemsModel itemsModel;
  const ItemsHome({super.key, required this.itemsModel});

  @override
  // ignore: library_private_types_in_public_api
  _ItemsHomeState createState() => _ItemsHomeState();
}

class _ItemsHomeState extends State<ItemsHome> {
  bool isHovered = false; // متغير للتحكم بتأثير التمرير

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("productdetails", arguments: {
          "itemsmodel": widget.itemsModel,
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            // جعل الصورة تأخذ المساحة المتاحة
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                "${AppLink.imagestItems}/${widget.itemsModel.itemsImage}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${translateDatabase(widget.itemsModel.itemsNameAr, widget.itemsModel.itemsName)}",
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "${widget.itemsModel.itemsPrice} \$", // عرض السعر
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
