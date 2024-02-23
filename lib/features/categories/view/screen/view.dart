import 'package:exfai/all_export.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoriesController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoute.categoriesAdd);
        },
        child: const Icon(
          size: 35,
          Icons.add,
          color: Colors.blue,
        ),
      ),
      body: GetBuilder<CategoriesController>(
        builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: WillPopScope(
            onWillPop: () {
              return controller.myback();
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) {
                    final category = controller.data[index];

                    return CategoryCard(
                      category: category,
                      onPressed: () {
                        controller.goToPageEdit(category);
                      },
                      onDeletePressed: () {
                        _showDeleteConfirmationDialog(
                          controller,
                          int.parse(category.categoriesId!),
                          category.categoriesImage!,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog(
    CategoriesController controller,
    int categoryId,
    String categoryImage,
  ) {
    Get.defaultDialog(
      title: "تحذير",
      middleText: "هل أنت متأكد من عملية الحذف",
      onCancel: () {},
      onConfirm: () {
        controller.deleteCategory(categoryId.toString(), categoryImage);
        Get.back();
      },
    );
  }
}

class CategoryCard extends StatelessWidget {
  final CategoriesModel category;
  final VoidCallback onPressed;
  final VoidCallback onDeletePressed;

  const CategoryCard({
    super.key,
    required this.category,
    required this.onPressed,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onPressed,
        leading: Container(
          padding: const EdgeInsets.all(4),
          child: CachedNetworkImage(
            imageUrl:
                "${AppLink.imagestCategories}/${category.categoriesImage}",
            height: 80,
          ),
        ),
        title: Text(
          category.categoriesName!,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(category.categoriesDatetime!),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete_outline,
            color: Colors.red,
          ),
          onPressed: onDeletePressed,
        ),
      ),
    );
  }
}
