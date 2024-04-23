import '../../../../../../all_export.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    String pleaseEnterTheDigitCodeSentTo =
        "لقد تم ارسال الرمز الى البريد الالكتروني هذا";

    Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: GetBuilder<VerifyCodeSignUpControllerImp>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: ListView(children: [
                  const PageAppBarLogin(),
                  const TitleAndPictureAtTheHeadOfThePage(
                    title: 'يا هلا بك في  ${AppTextAsset.appName}',
                    imageUrl: AppImageAsset.appLogo,
                  ),
                  SizedBox(height: 20.h),
                  const CustomTextTitleAuth(text: "تحقق من الرمز"),
                  SizedBox(height: 10.h),
                  CustomTextBodyAuth(
                      text:
                          "$pleaseEnterTheDigitCodeSentTo    ${controller.email}"),
                  SizedBox(height: 15.h),
                  OtpTextField(
                    fieldWidth: 50.0,
                    borderRadius: BorderRadius.circular(20),
                    numberOfFields: 5,
                    borderColor: AppColors.secondaryBackground,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      controller.goToSuccessSignUp(verificationCode);
                    }, // end onSubmit
                  ),
                  const SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      controller.reSend();
                      // عرض SnackBar بعد إعادة الإرسال
                      Get.snackbar(
                        "تنبيه",
                        'تم إعادة إرسال رمز التحقق بنجاح',
                        animationDuration: const Duration(seconds: 2),
                        snackPosition: SnackPosition.TOP,
                        duration: const Duration(seconds: 10),
                        icon: const Icon(
                          Icons.email_outlined,
                          color: AppColors.red,
                        ),
                        mainButton: TextButton(
                          onPressed: () {
                            // Get.toNamed(AppRoute.cart);
                          },
                          child: const Text(
                            "انتقل للبريد الالكتروني",
                            style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                      // يمكنك هنا تحديث أي جزء من الصفحة الذي ترغب في تغييره
                      // على سبيل المثال، تحديث حالة الصفحة أو تغيير أي بيانات أخرى
                    },
                    child: const Center(
                      child: Text(
                        "إعادة إرسال رمز التحقق",
                        style: TextStyle(color: AppColors.red, fontSize: 20),
                      ),
                    ),
                  )
                ]),
              ))),
    );
  }
}
