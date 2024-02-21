// ignore_for_file: deprecated_member_use

import 'package:exfai/core/functions/alertexitapp.dart';

import '../../all_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        backgroundColor: AppColor.scaffoldBackgroundColor,

        // backgroundColor: const MyCustomWidget(),
        //
        floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.scaffoldBackgroundColor,
            onPressed: () {
              Get.toNamed(AppRoute.cart);
            },
            child: const Icon(Icons.search_sharp)),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const CustomBottomAppBarHome(),
        body: WillPopScope(
          onWillPop: () => Get.alertExitApp(),
          child: controller.listPage.elementAt(controller.currentpage),
        ),
      ),
    );
  }
}
