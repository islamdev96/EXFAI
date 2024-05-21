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
      onHover: (value) {
        setState(() {
          isHovered = value; // تغيير حالة التمرير
        });
      },
      child: AnimatedContainer(
        // إضافة حركة سلسة عند تغيير الحالة
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          color: isHovered
              ? AppColors.primary.withOpacity(0.1)
              : AppColors.secondaryBackground, // تغيير لون الخلفية عند التمرير
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(
                  isHovered ? 0.2 : 0.1), // زيادة حدة الظل عند التمرير
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
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
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
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
            ),
          ],
        ),
      ),
    );
  }
}
