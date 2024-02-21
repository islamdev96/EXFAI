import '../../all_export.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());

    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<MyFavoriteController>(
            builder: ((controller) => ListView(children: [
                  CustomAppBar(
                    mycontroller: controller.search!,
                    titleappbar: "findYourProduct".tr,
                    iconData: Icons.arrow_forward,
                    // onPressedIcon: () {},
                    onPressedSearch: () {
                      controller.onSearchItems();
                    },
                    onChanged: (val) {
                      controller.checkSearch(val);
                    },
                    // onPressedIconFavorite: () {
                    //   Get.offAllNamed(AppRoute.homepage);
                    // },
                  ),
                  SizedBox(height: 30.h),
                  Center(
                    child: Text(
                      'ابحث عن كتاب مستعمل او اعرض كتابك',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(color: AppColor.primary),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (context, index) {
                          return CustomListFavoriteItems(
                              favoriteModel: controller.data[index]);
                        },
                      ))
                ]))),
      ),
    );
  }
}
