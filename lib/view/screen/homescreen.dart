import 'package:exfai/core/functions/alertexitapp.dart';

import '../../all_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        // extendBodyBehindAppBar: true,
        // primary: true,
        // appBar: AppBar(
        //   actions: [
        //     IconButton(
        //       onPressed: () {
        //         Get.toNamed(AppRoute.successResetpassword);
        //       },
        //       icon: const Icon(
        //         Icons.search,
        //         color: AppColor.red,
        //       ),
        //     ),
        //   ],
        //   iconTheme: const IconThemeData(
        //     color: AppColor.red,
        //   ),
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        // drawer: const CustomDrawer(),
        // Drawer(
        //   backgroundColor: Colors.transparent,
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: <Widget>[
        //       const DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: Colors.transparent,
        //         ),
        //         child: Text(
        //           'Drawer Header',
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 24,
        //           ),
        //         ),
        //       ),
        //       ListTile(
        //         leading: const Icon(Icons.message),
        //         title: const Text('Messages'),
        //         onTap: () {
        //           // Update the UI based on the drawer selection
        //         },
        //       ),
        //       ListTile(
        //         leading: const Icon(Icons.account_circle),
        //         title: const Text('Profile'),
        //         onTap: () {
        //           // Update the UI based on the drawer selection
        //         },
        //       ),
        //       ListTile(
        //         leading: const Icon(Icons.settings),
        //         title: const Text('Settings'),
        //         onTap: () {
        //           // Update the UI based on the drawer selection
        //         },
        //       ),
        //     ],
        //   ),
        // ),

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
