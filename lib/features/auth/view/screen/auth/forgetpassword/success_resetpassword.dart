import '../../../../../../../all_export.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: 50.h),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Center(
                child: Icon(
              Icons.check_circle_outline,
              size: 200.spMax,
              color: AppColors.green1,
            )),
            Text("مبروك",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 32.sp)),
            Text("تم تغيير كلمه السر بنجاح",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 26.sp)),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButtonAuth(
                  text: "يمكنك تسجيل الدخول الان",
                  onPressed: () {
                    controller.goToPageLogin();
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
