import '../../../../../all_export.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.secondaryBackground,
        elevation: 0.0,
        title: Text('success'.tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.primary)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.secondaryBackground,
          )),
          Text("congratulations".tr,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 30)),
          Text("passwordResetSuccess".tr),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomButtonAuth(
                text: "goToLogin".tr,
                onPressed: () {
                  controller.goToPageLogin();
                }),
          ),
        ]),
      ),
    );
  }
}
