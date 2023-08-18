import 'package:exfai/core/functions/alertexitapp.dart';

import '../../all_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
            // backgroundColor: const MyCustomWidget(),
            //
            floatingActionButton: FloatingActionButton(
                backgroundColor: AppColor.secondaryButton,
                onPressed: () {
                  Get.toNamed(AppRoute.cart);
                },
                child: const Icon(Icons.shopping_basket_outlined)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: const CustomBottomAppBarHome(),
            body: WillPopScope(
              onWillPop: () => Get.alertExitApp(),
              child: controller.listPage.elementAt(controller.currentpage),
            )));
  }
}
