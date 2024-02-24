// ignore_for_file: unrelated_type_equality_checks

import 'package:exfai/features/categories/view/widget/widget_list_categories_home.dart';

import '../../../all_export.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        controller.categories.length,
        (index) => WidgetListCategoriesHome(
          categoriesModel:
              CategoriesModel.fromJson(controller.categories[index]),
          i: index,
        ),
      ),
    );
  }
}
