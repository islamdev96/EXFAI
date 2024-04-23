import '../../../../../../../all_export.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: GetBuilder<ForgetPasswordControllerImp>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
                child: Form(
                  key: controller.formstate,
                  child: ListView(children: [
                    const PageAppBarLogin(),
                    const TitleAndPictureAtTheHeadOfThePage(
                      title: 'يا هلا بك في ${AppTextAsset.appName}',
                      imageUrl: AppImageAsset.appLogo,
                    ),
                    SizedBox(height: 20.h),
                    const CustomTextTitleAuth(text: "تفقد البريد الإلكتروني"),
                    SizedBox(height: 10.h),
                    const CustomTextBodyAuth(
                        // please Enter Your Email Address To Recive A verification code
                        text: "للحصول على رمز التحقق"),
                    SizedBox(height: 15.h),
                    CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return null;
                        },
                        mycontroller: controller.email,
                        hinttext: "البريد الالكتروني",
                        iconData: Icons.email_outlined,
                        labeltext: "البريد الالكتروني"
                        // mycontroller: ,
                        ),
                    CustomButtonAuth(
                        text: "تحقق",
                        onPressed: () {
                          controller.checkemail();
                        }),
                    SizedBox(height: 40.h),
                  ]),
                ),
              ))),
    );
  }
}
