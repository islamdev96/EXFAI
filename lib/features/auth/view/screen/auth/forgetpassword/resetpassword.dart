import '../../../../../../../all_export.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: GetBuilder<ResetPasswordControllerImp>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Form(
                  key: controller.formstate,
                  child: ListView(children: [
                    const PageAppBarLogin(),
                    const TitleAndPictureAtTheHeadOfThePage(
                      title: 'يا هلا بك في  ${AppTextAsset.appName}',
                      imageUrl: AppImageAsset.appLogo,
                    ),
                    const SizedBox(height: 20),
                    const CustomTextTitleAuth(
                        text: "برجاء انشاء كلمه السر الجديده"),
                    const SizedBox(height: 20),
                    CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validateInput(val!, 3, 40, "password");
                      },
                      mycontroller: controller.password,
                      hinttext: "ادخل كلمه السر هنا",
                      iconData: Icons.lock_outline,
                      labeltext: "كلمه السر",
                      // mycontroller: ,
                    ),
                    CustomTextFormAuth(
                      isNumber: false,

                      valid: (val) {
                        return validateInput(val!, 3, 40, "password");
                      },
                      mycontroller: controller.repassword,
                      hinttext: "اعد كتابه كلمه السر هنا",
                      iconData: Icons.lock_outline,
                      labeltext: "كلمه السر",

                      // mycontroller: ,
                    ),
                    CustomButtonAuth(
                        text: "تاكيد",
                        onPressed: () {
                          controller.goToSuccessResetPassword();
                        }),
                    const SizedBox(height: 40),
                  ]),
                ),
              ))),
    );
  }
}
