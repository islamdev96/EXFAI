// ignore_for_file: unused_field, deprecated_member_use

import '../../../../all_export.dart';

class MyFavorite extends StatefulWidget {
  const MyFavorite({super.key});

  @override
  State<MyFavorite> createState() => _MyFavoriteState();
}

class _MyFavoriteState extends State<MyFavorite> {
  final MyFavoriteController _controller = Get.put(MyFavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        color: AppColors.red,
        backgroundColor: AppColors.white,
        onRefresh: () async {
          // await _controller.getData(); // Reload data
        },
        child: ListView(
          children: [
            const PageAppBar(),
            TitleAndPictureAtTheHeadOfThePage(
              title: "الكتب المفضلة",
              imageUrl: AppImageAsset.icons8favourite,
              imageWidth: 85.w,
              imageHeight: 85.h,
            ),
            Center(
              child: Text(
                "هنا يوجد كل الكتب التي اعجبتك",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            GetBuilder<MyFavoriteController>(
              builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: WillPopScope(
                  onWillPop: controller.navigateBackToHome,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.favoriteItems.length,
                    itemBuilder: (context, index) {
                      final itemsModel = controller.favoriteItems[index];
                      final favoriteModel =
                          controller.favoriteModels.firstWhere(
                        (model) => model.itemsId == itemsModel.itemsId,
                      );

                      return WidgetFavoriteItem(
                        itemsModel: itemsModel,
                        favoriteId: favoriteModel.favoriteId!,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
