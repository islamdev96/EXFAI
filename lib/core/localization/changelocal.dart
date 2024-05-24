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
      // FlutterRingtonePlayer().playNotification();
      Get.snackbar(message.notification!.title!, message.notification!.body!);
      // refreshPageNotification(message.data);
    });
  }

  @override
  void onInit() {
    // requestPermissionNotification();
    fcmConfig();
    requestPerLocation();

    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang != null) {
      // إذا كانت اللغة محفوظة في التفضيلات المشتركة، استخدمها
      language = Locale(sharedPrefLang);
      appTheme = sharedPrefLang == "ar" ? themeArabic : themeEnglish;
    } else {
      // استخدم لغة الجهاز الافتراضية إذا لم تكن اللغة محفوظة
      String deviceLang = Get.deviceLocale?.languageCode ?? 'en';
      if (deviceLang == "ar" || deviceLang == "en") {
        language = Locale(deviceLang);
        appTheme = deviceLang == "ar" ? themeArabic : themeEnglish;
      } else {
        // إذا كانت لغة الجهاز ليست العربية أو الإنجليزية، استخدم الإنجليزية كلغة افتراضية
        language = const Locale("en");
        appTheme = themeEnglish;
      }
    }

    // تحديث لغة التطبيق وموضوعه بناءً على الإعدادات
    Get.updateLocale(language!);
    Get.changeTheme(appTheme);

    super.onInit();
  }
}
