// ignore_for_file: deprecated_member_use

import 'package:exfai/features/home/view/widget/categories/categories_widget.dart';

import '../../../../../all_export.dart';

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
          return CategoriesWidget(
            index: index,
            categoriesModel:
                CategoriesModel.fromJson(controller.categories[index]),
          );
        },
        // shrinkWrap: true, // Important to avoid height errors
        // physics:
        //     const NeverScrollableScrollPhysics(), // Disable scrolling to avoid conflicts
      ),
    );
  }
}
