import 'package:hamza/all_export.dart';
import 'package:hamza/core/functions/alertexitapp.dart';
import 'package:hamza/core/functions/alertexitapp.dart';

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
            child: const Icon(Icons.shopping_basket_outlined)),
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
