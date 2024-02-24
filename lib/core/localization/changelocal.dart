import '../../../../all_export.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;

  void changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    appTheme = langCode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  Future<void> requestPerLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Get.snackbar("Alert", "Please turn on the location service");
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Get.snackbar(
            "Alert", "Please give the location permission for the application");
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Get.snackbar("Alert",
          "The application cannot be used without specifying your location");
      return;
    }
  }

  void fcmConfig() {
    FirebaseMessaging.onMessage.listen((message) {
      FlutterRingtonePlayer().playNotification();
      Get.snackbar(message.notification!.title!, message.notification!.body!);
      refreshPageNotification(message.data);
    });
  }

  @override
  void onInit() {
    requestPermissionNotification();
    fcmConfig();
    requestPerLocation();

    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }

    super.onInit();
  }
}
