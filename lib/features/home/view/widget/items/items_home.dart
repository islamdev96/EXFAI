// ignore_for_file: library_private_types_in_public_api, overridden_fields

import '../../../../../all_export.dart';

class ItemsHome extends StatelessWidget {
  final ItemsModel itemsModel;
  @override
  final Key? key; // Add a
  // ignore: use_key_in_widget_constructors
  const ItemsHome({this.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(
        "productdetails",
        arguments: {"itemsmodel": itemsModel},
      ),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: _buildBoxDecoration(),
        height: 150.h,
        width: 150.w,
        child: Column(
          // mainAxisAlignment:
          //     MainAxisAlignment.spaceBetween, //  توزيع العناصر بشكل أفضل
          children: [
            _buildImage(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8.0), //  إضافة مساحة جانبية
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, //  محاذاة العناصر إلى اليسار
                children: [
                  _buildAddItemButton(), //  إضافة زر  CountItems2
                  SizedBox(height: 8.h),
                  PriceWithCurrency(
                    price: "${itemsModel.itemsPrice}",
                    color: AppColors.black,
                  ),
                  SizedBox(height: 4.h),
                  _buildProductName(),
                ],
              ),
            ),
            // _buildAddItemButton(), //  استخدام  AddItemButton  لإضافة المنتج
          ],
        ),
      ),
    );
  }

  // Method to build box decoration
  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
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
    );
  }

  // Method to build product image
  Widget _buildImage() {
    return Padding(
      padding: EdgeInsets.only(top: 25.h),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
        child: CustomCachedNetworkImage(
          imageUrl: "${AppLink.imagestItems}/${itemsModel.itemsImage}",
          width: 100.w, //  جعل الصورة تأخذ عرض الحاوية
          height: 100.h,
        ),
      ),
    );
  }

  // Method to build product name
  Widget _buildProductName() {
    return Text(
      translateDatabase(
        itemsModel.itemsNameAr,
        itemsModel.itemsName,
      ),
      style: TextStyle(
        color: AppColors.secondaryText,
        fontSize: 14.sp,
        overflow:
            TextOverflow.ellipsis, //  إضافة  ellipsis  في حال كان النص طويلاً
      ),
      maxLines: 1, //  عرض سطر واحد فقط من النص
    );
  }

  Widget _buildAddItemButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CountItems2(
        onAdd: () {
          final controller =
              Get.put(HomeControllerImp()); //  الحصول على  controller
          controller.add(); //  استدعاء دالة  add  في ال controller
        },
      ),
    );
  }
}
