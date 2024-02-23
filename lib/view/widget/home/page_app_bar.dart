import '../../../all_export.dart';

class PageAppBar extends GetView<HomeControllerImp> {
  // final String title;
  // final String body;
  const PageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Get.to(() => const CustomDrawer());
            },
            icon: const FaIcon(
              FontAwesomeIcons.barsStaggered,
              color: AppColor.red,
            ),
          ),
          // SizedBox(height: 10.h),
          Image.asset(
            'assets/images/66.png',
            width: 20.w,
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
