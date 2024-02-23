import 'package:exfai/all_export.dart';

class AddBookView extends StatelessWidget {
  const AddBookView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(AddBookViewController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBook'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoute.addbookAdd);
        },
        child: const Icon(Icons.add),
      ),
      body: GetBuilder<AddBookViewController>(
        builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: WillPopScope(
            onWillPop: () {
              return controller.myback();
            },
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                  itemCount: controller.data.length,
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
                              child: Container(
                                  padding: const EdgeInsets.all(4),
                                  child: CachedNetworkImage(
                                    height: 80,
                                    imageUrl:
                                        "${AppLink.imagesAddBook}/${controller.data[index].addbookImage}",
                                    placeholder: (context, url) => Image.asset(
                                      'assets/images/avatar.png', // Placeholder image asset
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                      'assets/images/logoapp.png', // Error image asset
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
                                            controller.deleteItems(
                                              controller.data[index].addbookId!,
                                              controller
                                                  .data[index].addbookImage!,
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
                                  controller.data[index].addbookPrice!,
                                  style: const TextStyle(color: Colors.blue),
                                ),
                                title: Text(
                                  controller.data[index].addbookTitle!,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
