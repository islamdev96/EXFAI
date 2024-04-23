
 
// import 'package:exfai/all_export.dart';
// import 'package:exfai/features/other/top_of_the_page/page_app_bar2.dart';

// class WidgetDrawer extends StatelessWidget {
//   const WidgetDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: AppColors.primary2,
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//             const PageAppBar2(),

//           DrawerHeader(
//             padding: EdgeInsets.only(top: 70.h, right: 25.h),
//             child: const Text(
//               'مرحبًا بك في  ${AppTextAsset.appName}',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//               ),
//             ),
//           ),
//           ListTile(
//             leading: const Icon(Icons.home, color: Colors.white),
//             title:
//                 const Text('الرئيسية', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Get.toNamed(AppRoute.hamzaHome);
//               // أضف العمليات اللازمة عند النقر على "الرئيسية"

//               // Add your navigation logic here
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.home, color: Colors.white),
//             title: const Text('المفضلة', style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Get.offAllNamed(AppRoute.myFavroite);
//               // أضف العمليات اللازمة عند النقر على "الرئيسية"

//               // Add your navigation logic here
//             },
//           ),

//           // انسخ الأكواد التالية وقم بتكرارها للعناصر الأخرى بنفس الطريقة
//           ListTile(
//             leading: const Icon(Icons.book, color: Colors.white),
//             title: const Text("اضف كتاب للبيع",
//                 style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Get.toNamed(AppRoute.bookAdd);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.book_online_sharp, color: Colors.white),
//             title: const Text("كتبي", style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Get.toNamed(AppRoute.bookView);
//             },
//           ),

//           ListTile(
//             leading:
//                 const Icon(Icons.question_answer_sharp, color: Colors.white),
//             title:
//                 const Text("حول  ${AppTextAsset.appName}", style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Get.to(() => const UsefulBeneficialPage());
//             },
//           ),

//           ListTile(
//             leading: const Icon(Icons.exit_to_app, color: Colors.white),
//             title: const Text("تسجيل الخروج",
//                 style: TextStyle(color: Colors.white)),
//             onTap: () {
//               Get.toNamed(AppRoute.signUp);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
