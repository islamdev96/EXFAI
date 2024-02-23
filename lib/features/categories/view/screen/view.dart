import 'package:exfai/all_export.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(CategoriesViewController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoute.categoriesAdd);
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: GetBuilder<CategoriesViewController>(
        builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: WillPopScope(
            onWillPop: () {
              return controller.myback();
            },
            child: Center(
              child: ListView.builder(
                itemCount: controller.data.length,
                padding: EdgeInsetsDirectional.only(bottom: 150.h),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      controller.goToPageEdit(controller.data[index]);
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: CachedNetworkImage(
                              height: 80,
                              imageUrl:
                                  "${AppLink.imagestCategories}/${controller.data[index].categoriesImage}",
                              placeholder: (context, url) => Image.asset(
                                'assets/images/avatar.png', // Placeholder image asset
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                              errorWidget: (context, url, error) => Image.asset(
                                'assets/images/logoapp.png', // Error image asset
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: ListTile(
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    color: Colors.red,
                                    icon: const Icon(Icons.delete_outline),
                                    onPressed: () {
                                      Get.defaultDialog(
                                        title: "تحذير",
                                        middleText:
                                            "هل أنت متأكد من عملية الحذف",
                                        onCancel: () {},
                                        onConfirm: () {
                                          controller.deleteCategory(
                                            controller
                                                .data[index].categoriesId!,
                                            controller
                                                .data[index].categoriesImage!,
                                          );
                                          Get.back();
                                        },
                                      );
                                    },
                                  ),
                                  // IconButton(
                                  //   icon: const Icon(Icons.edit),
                                  //   onPressed: () {
                                  //     controller.goToPageEdit(
                                  //         controller.data[index]);
                                  //   },
                                  // ),
                                ],
                              ),
                              subtitle: Text(
                                controller.data[index].categoriesName!,
                                style: const TextStyle(color: Colors.blue),
                              ),
                              title: Text(
                                controller.data[index].categoriesDescription!,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 120.h,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
