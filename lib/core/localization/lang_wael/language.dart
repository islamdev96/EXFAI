import 'package:exfai/core/localization/lang_wael/custombuttomlang.dart';

import '../../../all_export.dart';

MyServices myServices = Get.find();

class Languages extends GetView<LocaleController> {
  const Languages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr, style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 20),
            CustomButtonLang(
              textbutton: "Ar",
              onPressed: () {
                controller.changeLang("ar");
                navigateToNextPage();
              },
            ),
            CustomButtonLang(
              textbutton: "En",
              onPressed: () {
                controller.changeLang("en");
                navigateToNextPage();
              },
            ),
          ],
        ),
      ),
    );
  }

  void navigateToNextPage() async {
    // Check if the app is opened for the first time
    bool isFirstLaunch =
        myServices.sharedPreferences.getBool('firstLaunch') ?? true;

    if (isFirstLaunch) {
      // Set the first launch flag to false
      await myServices.sharedPreferences.setBool('firstLaunch', false);

      // Navigate to the onboarding page
      Get.offAllNamed(AppRoute.onBoarding);
    } else {
      // Navigate to the login page
      Get.offAllNamed(AppRoute.login);
    }
  }
}
