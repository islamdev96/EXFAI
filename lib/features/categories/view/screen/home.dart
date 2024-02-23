// ignore_for_file: unused_local_variable

import '../../../../all_export.dart';

class HomePageAdmin extends StatelessWidget {
  const HomePageAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView(
        children: [
          GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisExtent: 150),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              CardAdminHome(
                  url: AppImageAsset.avatar,
                  title: "Categories",
                  onClick: () {
                    Get.toNamed(AppRoute.categoriesView);
                  }),
              CardAdminHome(
                  url: AppImageAsset.avatar,
                  title: "Items",
                  onClick: () {
                    Get.toNamed(AppRoute.addbookView);
                  }),
              CardAdminHome(
                  url: AppImageAsset.avatar, title: "Users", onClick: () {}),
              // CardAdminHome(
              //     url: AppImageAsset.avatar,
              //     title: "Orders",
              //     onClick: () {
              //       Get.toNamed(AppRoute.ordershome);
              //     }),
              CardAdminHome(
                  url: AppImageAsset.avatar, title: "Report", onClick: () {}),
              CardAdminHome(
                  url: AppImageAsset.avatar,
                  title: "Notification",
                  onClick: () {})
            ],
          )
        ],
      ),
    );
  }
}
