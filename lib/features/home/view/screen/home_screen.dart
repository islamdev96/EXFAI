// ignore_for_file: unused_local_variable, deprecated_member_use

import 'package:exfai/core/functions/alertexitapp.dart';

import '../../../../all_export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());

    Get.put(HomeControllerImp());

    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: ListView(
        children: [
          WillPopScope(
            onWillPop: () => Get.alertExitApp(),
            child: Padding(
              padding: EdgeInsets.all(10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PageAppBar(),
                  const TitleAndPictureAtTheHeadOfThePage(
                    title: 'يا هلا بك في همزة',
                    imageUrl: AppImageAsset.appLogo,
                  ),
                  SizedBox(height: 25.h),
                  const SearchTextField(),
                  SizedBox(height: 30.h),
                  GetBuilder<HomeControllerImp>(
                    builder: (controller) => HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: Column(
                        children: [
                          const CustomCardHome(
                              title: "A summer surprise", body: "Cashback 20%"),
                          CustomTitleHome(title: "categories".tr),
                          const ListCategoriesHome(),
                          CustomTitleHome(title: "productForYou".tr),
                          const ListItemsHome(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
