import '../../../../all_export.dart';

abstract class SuccessSignUpController extends GetxController {
  goToHomePage(); // Change the method name to reflect the action
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToHomePage() {
    // Modify the method to navigate to the home screen
    Get.offAllNamed(
        AppRoute.homepage); // Replace AppRoute.home with your home screen route
  }
}
