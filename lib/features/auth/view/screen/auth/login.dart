// ignore_for_file: deprecated_member_use

import 'package:exfai/core/functions/alertexitapp.dart';

import '../../../../../all_export.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: WillPopScope(
          onWillPop: () => Get.alertExitApp(),
          child: GetBuilder<LoginControllerImp>(
            builder: (controller) => HandlingDataRequest(
                statusRequest: controller.statusRequest,
                widget: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formState,
                    child: ListView(children: [
                      const PageAppBarLogin(),
                      const TitleAndPictureAtTheHeadOfThePage(
                        title: 'يا هلا بك في  ${AppTextAsset.appName}',
                        imageUrl: AppImageAsset.appLogo,
                      ),
                      CustomTextFormAuth(
                          isNumber: false,
                          valid: (val) {
                            return validateInput(val!, 1, 50, "email");
                          },
                          mycontroller: controller.email,
                          hinttext: "البريد الالكتروني",
                          iconData: Icons.email_outlined,
                          labeltext: "البريد الالكتروني"
                          // mycontroller: ,
                          ),
                      GetBuilder<LoginControllerImp>(
                        builder: (controller) => CustomTextFormAuth(
                          obscureText: controller.isShowPassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
                          isNumber: false,
                          valid: (val) {
                            return validateInput(val!, 1, 50, "password");
                          },
                          mycontroller: controller.password,
                          hinttext: "كلمه السر",
                          iconData: Icons.lock_outline,
                          labeltext: "كلمه السر",
                          // mycontroller: ,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.goToForgetPassword();
                        },
                        child: const Text(
                          "نسيت كلمة السر",
                          textAlign: TextAlign.right,
                        ),
                      ),
                      CustomButtonAuth(
                          text: "تسجيل الدخول",
                          onPressed: () {
                            controller.login();
                          }),
                      const SizedBox(height: 40),
                      CustomTextSignUpOrSignIn(
                        textone: "ليس لديك حساب؟",
                        texttwo: "انشاء حساب",
                        onTap: () {
                          controller.goToSignUp();
                        },
                      )
                    ]),
                  ),
                )),
          )),
    );
  }
}
