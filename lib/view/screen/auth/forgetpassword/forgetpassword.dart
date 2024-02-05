import '../../../../../all_export.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.secondaryBackground,
        elevation: 0.0,
        title: Text('forgetPassword'.tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.primary)),
      ),
      body: GetBuilder<ForgetPasswordControllerImp>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
                child: Form(
                  key: controller.formstate,
                  child: ListView(children: [
                    SizedBox(height: 20.h),
                    CustomTextTitleAuth(text: "checkEmail".tr),
                    SizedBox(height: 10.h),
                    CustomTextBodyAuth(
                        // please Enter Your Email Address To Recive A verification code
                        text: "reciveAVerificationCode".tr),
                    SizedBox(height: 15.h),
                    CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return null;
                      },
                      mycontroller: controller.email,
                      hinttext: "enterYourEmail".tr,
                      iconData: Icons.email_outlined,
                      labeltext: "email".tr,
                      // mycontroller: ,
                    ),
                    CustomButtonAuth(
                        text: "check".tr,
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
