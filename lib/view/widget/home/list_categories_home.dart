// ignore_for_file: unrelated_type_equality_checks

import '../../../all_export.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        controller.categories.length,
        (index) => Categories(
          categoriesModel:
              CategoriesModel.fromJson(controller.categories[index]),
          i: index,
        ),
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      child: ListTile(
        horizontalTitleGap: 20.w,
        visualDensity: VisualDensity.standard,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        tileColor: AppColor.secondaryBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        selected: controller.categories == categoriesModel.categoriesId,
        onTap: () {
          controller.goToItems(
              controller.categories, i!, categoriesModel.categoriesId!);
        },
        dense: true,
        trailing: const FaIcon(
          FontAwesomeIcons.share,
          color: AppColor.red,
          size: 30,
        ),
        enabled: true,
        leading: SizedBox(
          width: 50.w,
          height: 70.h,
          child: Container(
            width: 70.w,
            height: 70.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColor.white,
            ),
            child: CachedNetworkImage(
              imageUrl:
                  "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
            ),
          ),
        ),
        title: Text(
          "${translateDatabase(categoriesModel.categoriesName, categoriesModel.categoriesName)}",
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColor.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "${translateDatabase(categoriesModel.categoriesDescAr, categoriesModel.categoriesDescAr)}",
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColor.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
