import 'package:exfai/features/home/view/screen/categories/list_categories_home.dart';
import '../../../../all_export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      // Add Scaffold here
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              CustomAppBar(
                mycontroller: controller.search!,
                titleappbar: "findYourProduct".tr,
                onPressedSearch: () {
                  controller.onSearchItems();
                },
                onChanged: (val) {
                  controller.checkSearch(val);
                },
                onPressedIconFavorite: () {
                  Get.toNamed(AppRoute.myFavroite);
                },
              ),
              HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: !controller.isSearch
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomCardHome(
                              title: "A summer surprise", body: "Cashback 20%"),
                          CustomTitleHome(title: "categories".tr),
                          const ListCategoriesHome(),
                          CustomTitleHome(title: "productForYou".tr),
                          const ListItemsHome(),
                        ],
                      )
                    : ListItemsSearch(listdatamodel: controller.listdata),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListItemsSearch extends GetView<HomeControllerImp> {
  final List<ItemsModel> listdatamodel;
  const ListItemsSearch({super.key, required this.listdatamodel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listdatamodel.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            controller.goToPageProductDetails(listdatamodel[index]);
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        child: CachedNetworkImage(
                            imageUrl:
                                "${AppLink.imagestItems}/${listdatamodel[index].itemsImage}")),
                    Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text(listdatamodel[index].itemsName!),
                        subtitle: Text(listdatamodel[index].categoriesName!),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
