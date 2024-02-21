import 'package:exfai/addbook/controller/addbook/view_controller.dart';
import 'package:exfai/all_export.dart';

class AddBookView extends StatelessWidget {
  const AddBookView({super.key});

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
              // ignore: deprecated_member_use
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
                                  child: Row(children: [
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.all(4),
                                      child: CachedNetworkImage(
                                        height: 80,
                                        imageUrl:
                                            "${AppLink.imagesAddBook}/${controller.data[index].addbookImage}",
                                      ),
                                    )),
                                Expanded(
                                    flex: 3,
                                    child: ListTile(
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                              icon: const Icon(
                                                  Icons.delete_outline),
                                              onPressed: () {
                                                Get.defaultDialog(
                                                    title: "تحذير",
                                                    middleText:
                                                        "هل أنت متأكد من عملية الحذف",
                                                    onCancel: () {},
                                                    onConfirm: () {
                                                      controller.deleteItems(
                                                          controller.data[index]
                                                              .addbookId!,
                                                          controller.data[index]
                                                              .addbookImage!);
                                                      Get.back();
                                                    });
                                              }),
                                          IconButton(
                                              icon: const Icon(Icons.edit),
                                              onPressed: () {
                                                controller.goToPageEdit(
                                                    controller.data[index]);
                                              }),
                                        ],
                                      ),
                                      subtitle: Text(
                                        controller.data[index].addbookPrice!,
                                        style:
                                            const TextStyle(color: Colors.red),
                                      ),
                                      title: Text(
                                        controller.data[index].addbookTitle!,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ))
                              ])),
                            );
                          },
                        ))),
              ))),
    );
  }
}
