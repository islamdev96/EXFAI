import '../../../../all_export.dart';

class WidgetListCategoriesHome extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const WidgetListCategoriesHome(
      {super.key, required this.categoriesModel, required this.i});

  @override
  Widget build(BuildContext context) {
    final description = categoriesModel.categoriesDescription!;
    final firstFiveWords = description.split(' ').take(5).join(' ');

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
          "${categoriesModel.categoriesName}",
          style: TextStyle(
            color: AppColor.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          firstFiveWords,
          style: TextStyle(
            color: AppColor.black,
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}
