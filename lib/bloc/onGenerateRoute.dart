// import 'package:exfai/core/localization/lang_wael/language.dart';

// import '../all_export.dart';

// Route<dynamic>? onGenerateRoute(RouteSettings settings) {
//   // تحقق من حالة تسجيل الدخول أو الحالة الأخرى
//   if (myServices.sharedPreferences.getString("LoginController") == "true") {
//     return MaterialPageRoute(
//       builder: (context) => routes[AppRoute.homepage]!(context),
//       settings: const RouteSettings(name: AppRoute.homepage),
//     );
//   }
//   if (myServices.sharedPreferences.getString("step") == "1") {
//     return MaterialPageRoute(
//       builder: (context) => routes[AppRoute.login]!(context),
//       settings: const RouteSettings(name: AppRoute.login),
//     );
//   }

//   // إذا لم يتم تلبية أي شرط، انتقل إلى المسار المطلوب
//   final builder = routes[settings.name];
//   if (builder != null) {
//     return MaterialPageRoute(
//       builder: builder,
//       settings: settings,
//     );
//   }

//   // إذا لم يكن هناك مسار مطابق، يمكنك إرجاع صفحة خطأ أو null
//   return null;
// }
