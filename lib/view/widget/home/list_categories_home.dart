// ignore_for_file: deprecated_member_use

import '../../../all_export.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 5.w),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            i: index,
            categoriesModel:
                CategoriesModel.fromJson(controller.categories[index]),
          );
        },
      ),
    );
  }
}

class Categories extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({super.key, required this.categoriesModel, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(
            controller.categories, i!, categoriesModel.categoriesId!);
      },
      child: Column(
        children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.green
                      // color: Color.fromARGB(255, 189, 239, 162),
                      ),
                ),
                SvgPicture.network(
                  "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
                  color: AppColors.black,
                  height: 70, // Adjust image height as needed
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h), // Adjust spacing as needed
          Text(
            "${translateDatabase(categoriesModel.categoriesNamaAr, categoriesModel.categoriesName)}",
            style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.secondaryText,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
