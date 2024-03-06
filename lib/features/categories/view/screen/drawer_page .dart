// ignore_for_file: file_names

import 'package:exfai/features/addbook/view/screen/addbook_home.dart';
import 'package:exfai/features/addbook/view/screen/useful_beneficial_page.dart';

import '../../../../all_export.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
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
                Get.to(const HomePageAdmin());
                // أضف العمليات اللازمة عند النقر على "الرئيسية"

                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: const Icon(Icons.login, color: Colors.white),
              title: const Text('تسجيل الدخول',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                // Get.to(const SearchBarApp());
                // أضف العمليات اللازمة عند النقر على "تسجيل الدخول"

                // Add your navigation logic here
              },
            ),
            // انسخ الأكواد التالية وقم بتكرارها للعناصر الأخرى بنفس الطريقة
            ListTile(
              leading: const Icon(Icons.book, color: Colors.white),
              title: const Text('بيع الكتب',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.to(() => const BookDetailsPage());
              },
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(Icons.menu_book, color: Colors.white),
              title: const Text('الكتب العامة',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Get.to(() => const UsefulBeneficialPage());
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit, color: Colors.white),
              title: const Text('المخطوطات',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark, color: Colors.white),
              title: const Text('الكتب النادرة',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: const Icon(Icons.school, color: Colors.white),
              title: const Text('المذكرات الجمعية والمدرسية',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                // Add your navigation logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
