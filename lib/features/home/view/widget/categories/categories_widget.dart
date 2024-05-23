import '../../../../../all_export.dart';

class CategoriesWidget extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int? index;

  const CategoriesWidget(
      {super.key, required this.categoriesModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(
            controller.categories, index!, categoriesModel.categoriesId!);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80.h,
              width: 80.w,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CustomCachedNetworkImage(
                      imageUrl:
                          "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
                      width: 70,
                      height: 70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "${translateDatabase(categoriesModel.categoriesNamaAr, categoriesModel.categoriesName)}",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
