// ignore_for_file: deprecated_member_use

import 'package:exfai/core/functions/alertexitapp.dart';

import '../../../../../../../all_export.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: WillPopScope(
          onWillPop: () => Get.alertExitApp(),
          child: GetBuilder<SignUpControllerImp>(
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
                        title: 'يا هلا بك في ${AppTextAsset.appName}',
                        imageUrl: AppImageAsset.appLogo,
                      ),

                      const SizedBox(height: 20),
                      CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return validateInput(val!, 1, 50, "username");
                        },
                        mycontroller: controller.usernameController,
                        hinttext: "الاسم",
                        iconData: Icons.person_outline,
                        labeltext: "الاسم", // mycontroller: ,
                      ),
                      CustomTextFormAuth(
                        isNumber: false,

                        valid: (val) {
                          return validateInput(val!, 1, 50, "email");
                        },
                        mycontroller: controller.emailController,
                        hinttext: "البريد الالكتروني",
                        iconData: Icons.email_outlined,
                        labeltext: "البريد الالكتروني", // mycontroller: ,
                      ),
                      // CustomTextFormAuth(
                      //   isNumber: true,
                      //   valid: (val) {
                      //     return validateInput(val!, 3, 15, "phone");
                      //   },
                      //   mycontroller: controller.phoneController,
                      //   hinttext: "enterYourPhone".tr,
                      //   iconData: Icons.phone_android_outlined,
                      //   labeltext: "phone".tr,
                      //   // mycontroller: ,
                      // ),
                      GetBuilder<SignUpControllerImp>(
                        builder: (controller) => CustomTextFormAuth(
                          obscureText: controller.isShowPassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
                          isNumber: false,
                          valid: (val) {
                            return validateInput(val!, 1, 50, "password");
                          },
                          mycontroller: controller.passwordController,
                          hinttext: "كلمه السر",
                          iconData: Icons.lock_outline,
                          labeltext: "كلمه السر",
                        ),
                      ),
                      CustomButtonAuth(
                          text: "انشاء حساب",
                          onPressed: () {
                            controller.signUp();
                          }),
                      const SizedBox(height: 40),
                      CustomTextSignUpOrSignIn(
                        textone: "لدي حساب بالفعل",
                        texttwo: "تسجيل الدخول",
                        onTap: () {
                          controller.goToSignIn();
                        },
                      ),
                    ]),
                  ),
                )),
          )),
    );
  }
}
