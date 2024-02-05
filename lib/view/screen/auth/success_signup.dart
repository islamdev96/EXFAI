import '../../../../all_export.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
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
          Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200.spMax,
            color: AppColor.secondaryBackground,
          )),
          Text("congratulations".tr,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 30.sp)),
          Text("successfullyRegisteerror".tr),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomButtonAuth(
                text: "goToLogin".tr,
                onPressed: () {
                  controller.goToPageLogin();
                }),
          ),
          const SizedBox(height: 30)
        ]),
      ),
    );
  }
}
