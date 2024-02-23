import 'package:exfai/addbook/controller/addbook_controllaer.dart';
import 'package:exfai/addbook/data/model/addbook_model.dart';
import '../../../all_export.dart';

class AddBook extends StatefulWidget {
  const AddBook({
    super.key,
  });

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  @override
  Widget build(BuildContext context) {
    final AddBookControllerImp controller = Get.put(
        AddBookControllerImp()); // تغيير الاسم من AddBookControllerImp إلى AddBookControllerImp
    final FavoriteController controllerFav = Get.put(FavoriteController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const ListCategoriesAddBook(),
            GetBuilder<AddBookControllerImp>(
              // تغيير النوع إلى AddBookControllerImp
              builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: !controller.isSearch
                    ? GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (BuildContext context, index) {
                          final AddBookModel addBookModel =
                              AddBookModel.fromJson(controller.data[index]);
                          controllerFav.isFavorite[addBookModel.addbookId] =
                              controller.data[index]['favorite'];
                          return CustomListAddBook(
                            addBookModel: addBookModel,
                          );
                        },
                      )
                    : ListItemsSearch(
                        listdatamodel: controller.listdata,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
