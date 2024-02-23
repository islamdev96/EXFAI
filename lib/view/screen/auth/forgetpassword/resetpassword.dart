import '../../../../../all_export.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.secondaryBackground,
        elevation: 0.0,
        title: Text('resetPassword'.tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.primary)),
      ),
      body: GetBuilder<ResetPasswordControllerImp>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Form(
                  key: controller.formstate,
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    CustomTextTitleAuth(text: "newPassword".tr),
                    const SizedBox(height: 10),
                    CustomTextBodyAuth(text: "newPassword".tr),
                    const SizedBox(height: 15),
                    CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validateInput(val!, 3, 40, "password");
                      },
                      mycontroller: controller.password,
                      hinttext: "13".tr,
                      iconData: Icons.lock_outline,
                      labeltext: "19".tr,
                      // mycontroller: ,
                    ),
                    CustomTextFormAuth(
                      isNumber: false,

                      valid: (val) {
                        return validateInput(val!, 3, 40, "password");
                      },
                      mycontroller: controller.repassword,
                      hinttext: "Re ${"13".tr}",
                      iconData: Icons.lock_outline,
                      labeltext: "19".tr,
                      // mycontroller: ,
                    ),
                    CustomButtonAuth(
                        text: "33".tr,
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
