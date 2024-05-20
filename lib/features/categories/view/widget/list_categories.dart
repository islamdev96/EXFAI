import '../../../../all_export.dart';

class ListCategories extends GetView<ItemsControllerImp> {
  const ListCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            categoriesModel:
                CategoriesModel.fromJson(controller.categories[index]),
            index: index,
          );
        },
      ),
    );
  }
}

class Categories extends GetView<ItemsControllerImp> {
  final CategoriesModel categoriesModel;
  final int index;
  const Categories(
      {super.key, required this.categoriesModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeCat(index, categoriesModel.categoriesId!);
      },
      child: Column(
        children: [
          GetBuilder<ItemsControllerImp>(
            builder: (controller) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: controller.selectedCat == index
                      ? [AppColors.primary, AppColors.red]
                      : [Colors.white, Colors.white],
                ),
                boxShadow: [
                  BoxShadow(
                    color: controller.selectedCat == index
                        ? AppColors.red.withOpacity(0.5)
                        : Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    // blurRadius: 1,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 10),
                  Text(
                    categoriesModel.categoriesName!,
                    style: TextStyle(
                      fontSize: 16,
                      color: controller.selectedCat == index
                          ? Colors.white
                          : AppColors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
