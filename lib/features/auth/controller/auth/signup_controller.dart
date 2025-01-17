import '../../../../all_export.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController usernameController;
  late TextEditingController emailController;
  // late TextEditingController phoneController;
  late TextEditingController passwordController;

  bool isShowPassword = true;

  StatusRequest statusRequest = StatusRequest.none;

  SignupData signupData = SignupData(Get.find());

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  List data = [];

  @override
  signUp() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postdata(
        usernameController.text,
        passwordController.text,
        emailController.text,
        // phoneController.text,
        // emailController.text
      );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.homepage,
              arguments: {"email": emailController.text});
        } else {
          Get.defaultDialog(
              title: "تنبيه", middleText: "البريد الإلكتروني موجود بالفعل");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    usernameController = TextEditingController();
    // phoneController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    // phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
