// ignore_for_file: file_names

import '../../../../all_export.dart';

class CustomDrawerLogin extends StatelessWidget {
  const CustomDrawerLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue.withOpacity(0.1),
      child: Container(
        color: Colors.blue.withOpacity(0.1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
              ),
              child: const Text(
                'مرحبًا بك في  ${AppTextAsset.appName}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.login, color: Colors.white),
              title: const Text('تسجيل الدخول',
                  style: TextStyle(color: Colors.white)),
              onTap: () async {
                // فتح صفحة تسجيل الدخول
                await Get.offAllNamed(AppRoute.login);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add, color: Colors.white),
              title: const Text('إنشاء حساب',
                  style: TextStyle(color: Colors.white)),
              onTap: () async {
                // فتح صفحة إنشاء حساب جديد
                await Get.offAllNamed(AppRoute.signUp);
              },
            ),
            ListTile(
              leading:
                  const Icon(Icons.admin_panel_settings, color: Colors.white),
              title: const Text('تسجيل كمسؤول',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                // فتح صفحة تسجيل الدخول كمسؤول
                // Get.to(const AdminLoginScreen());
              },
            ),
            // العناصر الأخرى...
          ],
        ),
      ),
    );
  }
}
