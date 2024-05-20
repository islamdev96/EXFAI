import 'package:exfai/features/top_of_the_page/page_app_bar2.dart';

import '../../../all_export.dart';

class WidgetDrawer extends StatelessWidget {
  const WidgetDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());

    return Drawer(
      backgroundColor: AppColors.primary2,
      child: ListView(
        children: <Widget>[
          const PageAppBar2(),
          DrawerHeader(
            padding: EdgeInsets.only(top: 70.h, right: 25.h),
            child: const Text(
              'مرحبًا بك في همزة',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title:
                const Text('الرئيسية', style: TextStyle(color: Colors.white)),
            onTap: () {
              Get.toNamed(AppRoute.addressview);
            },
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text('المفضلة', style: TextStyle(color: Colors.white)),
            onTap: () {
              Get.offAllNamed(AppRoute.myFavroite);
            },
          ),
          ListTile(
            leading: const Icon(Icons.book, color: Colors.white),
            title: const Text("اضف كتاب للبيع",
                style: TextStyle(color: Colors.white)),
            onTap: () {
              Get.toNamed(AppRoute.homepage);
            },
          ),
          ListTile(
            leading: const Icon(Icons.book_online_sharp, color: Colors.white),
            title: const Text("كتبي", style: TextStyle(color: Colors.white)),
            onTap: () {
              Get.toNamed(AppRoute.items);
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.question_answer_sharp, color: Colors.white),
            title:
                const Text("حول همزة", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Get.to(() => const UsefulBeneficialPage());
            },
          ),
          const ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.white),
            title: Text("تسجيل الخروج", style: TextStyle(color: Colors.white)),
            // onTap: controller.logout,
          ),
        ],
      ),
    );
  }
}
