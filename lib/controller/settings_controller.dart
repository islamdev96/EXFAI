import '../../all_export.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();

  get categories => null;

  logout() {
    String userid = myServices.sharedPreferences.getString("id")!;
    FirebaseMessaging.instance.unsubscribeFromTopic("users");
    FirebaseMessaging.instance.unsubscribeFromTopic("users$userid");
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.login);
  }

  void changeLang(String s) {}

  void goToItems(categories, int i, String s) {}
}
