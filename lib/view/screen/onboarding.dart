import '../../../all_export.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Padding(
            //   padding: EdgeInsets.only(left: 280),
            //   // child: InkWell(
            //   //   onTap: () {
            //   //     Get.toNamed('/login');
            //   //   },
            //   //   child: Text(
            //   //     'skip'.tr,
            //   //     style: Theme.of(context)
            //   //         .textTheme
            //   //         .displayLarge!
            //   //         .copyWith(color: Colors.blue),
            //   //   ),
            //   // ),
            // ),
            Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotControllerOnBoarding(),
                  Spacer(flex: 2),
                  CustomButtonOnBoarding()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
