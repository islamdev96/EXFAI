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
    return Column(
      children: [
        ListTile(
          selected: controller.categories == categoriesModel.categoriesId,
          selectedColor: AppColor.red,
          focusColor: AppColor.red,
          hoverColor: AppColor.red,
          enableFeedback: false,
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
            width: 70.w,
            height: 70.h,
            child:
                categoriesModel.categoriesImage!.toLowerCase().endsWith('.svg')
                    ? SvgPicture.network(
                        "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
                        // color: AppColor.black,
                        height: 30, // Adjust image height as needed
                      )
                    : Image.network(
                        "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
                        height: 30, // Adjust image height as needed
                        fit: BoxFit.contain, // Adjust image fit as needed
                      ),
          ),
          title: Text(
            "${translateDatabase(categoriesModel.categoriesNamaAr, categoriesModel.categoriesName)}",
            style: TextStyle(
                fontSize: 14.sp,
                color: AppColor.black,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "${translateDatabase(categoriesModel.categoriesDescAr, categoriesModel.categoriesDescAr)}",
            style: TextStyle(
                fontSize: 12.sp,
                color: AppColor.black,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
