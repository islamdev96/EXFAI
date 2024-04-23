import '../../../../../../../all_export.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    final String pleaseEnterTheDigitCodeSentTo =
        "الرجاء إدخال الرمز الرقمي المرسل إليه".tr;

    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const PageAppBarLogin(),
          const TitleAndPictureAtTheHeadOfThePage(
            title: 'يا هلا بك في  ${AppTextAsset.appName}',
            imageUrl: AppImageAsset.appLogo,
          ),
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "تحقق من الرمز"),
          const SizedBox(height: 10),
          CustomTextBodyAuth(
              text: "$pleaseEnterTheDigitCodeSentTo  ${controller.email}"),
          const SizedBox(height: 15),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goToResetPassword(verificationCode);
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
      ),
    );
  }
}
