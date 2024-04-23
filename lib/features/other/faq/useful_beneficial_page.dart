 
// import '../../../all_export.dart';

// class UsefulBeneficialPage extends StatelessWidget {
//   const UsefulBeneficialPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: const CustomBottomNavigationBar(),
//       backgroundColor: AppColors.scaffoldBackgroundColor,
//       body: ListView(
//         children: [
//           Container(
//             color: AppColors.scaffoldBackgroundColor,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const PageAppBar(),
//                 const TitleAndPictureAtTheHeadOfThePage(
//                   title: "أفيد وأستفيد من كتبك",
//                   imageUrl: AppImageAsset.appLogo,
//                 ),
//                 SizedBox(height: 70.h),
//               ],
//             ),
//           ),
//           Card(
//             margin: const EdgeInsets.all(10),
//             elevation: 5,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30),
//               side: BorderSide(
//                 color: Colors.grey.withOpacity(0.5),
//                 width: 1,
//               ),
//             ),
//             child: const Padding(
//               padding: EdgeInsets.all(6.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Text(
//                       "كم تكلفة عمولة ${AppTextAsset.appName}",
//                       style: TextStyle(
//                         color: AppColors.black,
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   Center(
//                     child: Text(
//                       "تبلغ عموله ${AppTextAsset.appName} ريالان فقط لكل كتاب يدفعها البائع في حاله بيعه عن طريق المنصه ويمكن تحويل العمولة عن طريق",
//                       style: TextStyle(
//                         color: AppColors.secondaryText,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   Center(
//                     child: Text(
//                       "Urpay او STCPay فقط للرقم\n 0532533401",
//                       style: TextStyle(
//                         color: AppColors.red,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             color: AppColors.primary2, // Set premier blue color
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: 32.h,
//                 ),
//                 const WidgetFAQ(
//                   question: "هل تقدمون خدمات التوصيل؟",
//                   answer:
//                       "نحن لا نقدم خدمات التوصيل، ويتم التنسيق بشأن التوصيل مع البائع مباشرةً.",
//                 ),
//                 const WidgetFAQ(
//                   question: "بعت كتابي ماذا أفعل؟",
//                   answer:
//                       "يمكنك تسجيل الدخول إلى حسابك وحذف الكتاب الذي قمت بإضافته.",
//                 ),
//                 const WidgetFAQ(
//                   question: "كيف يمكنني حذف حسابي؟",
//                   answer: "يمكنك حذف حسابك عن طريق زيارة صفحة حذف حسابي",
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Text(
//                     "حذف حسابي",
//                     style: TextStyle(
//                       color: AppColors.red,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.sp,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 50.h),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
