import '../../../all_export.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: (controller.categories.length / 4).ceil(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  for (int i = index * 4;
                      i < (index * 4 + 4) && i < controller.categories.length;
                      i++)
                    Categories(
                      i: i,
                      categoriesModel:
                          CategoriesModel.fromJson(controller.categories[i]),
                    ),
                ],
              ),
              const SizedBox(height: 10), // Add spacing between rows
            ],
          );
        },
      ),
    );
  }
}

class Categories extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({Key? key, required this.categoriesModel, required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(
            controller.categories, i!, categoriesModel.categoriesId!);
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColor.cardBackground,
                borderRadius: BorderRadius.circular(500)),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 70,
            width: 70,
            child: SvgPicture.network(
                "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
                color: AppColor.primaryText),
          ),
          Text(
            "${translateDatabase(categoriesModel.categoriesNamaAr, categoriesModel.categoriesName)}",
            style: const TextStyle(fontSize: 20, color: AppColor.primaryText),
          )
        ],
      ),
    );
  }
}
