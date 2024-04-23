import '../../../all_export.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    final MyServices myServices = Get.find(); // الوصول إلى MyServices مباشرةً

    String? loginController =
        myServices.sharedPreferences.getString("LoginController");
    String? userId = myServices.getCurrentUserId();

    if (loginController == "true") {
      return const RouteSettings(name: AppRoute.homepage);
    } else if (userId == null) {
      return const RouteSettings(name: AppRoute.login);
    }

    return null;
  }
}
