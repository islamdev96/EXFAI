import 'package:exfai/core/functions/alertexitapp.dart';

import '../../../../all_export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeControllerImp homeController =
      Get.put(HomeControllerImp()); //  تهيئة ال controller مرة واحدة
  // final ProductDetailsControllerImp productDetailsController =
  //     Get.put(ProductDetailsControllerImp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      bottomNavigationBar: const CustomBottomNavigationBar(),
      // ignore: deprecated_member_use
      body: WillPopScope(
        onWillPop: () => Get.alertExitApp(),
        child: GetBuilder<HomeControllerImp>(
          init: homeController, //  تحديد  controller  لـ GetBuilder
          builder: (_) => HandlingDataView(
            // استخدام  _  لـ builder  للتوضيح
            statusRequest: homeController.statusRequest,
            widget: CustomScrollView(
              //  استخدام CustomScrollView  لأداء أفضل
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),

                        const SearchAppBar(),
                        SizedBox(height: 20.h),
                        const CustomCardHome(
                          title: "A summer surprise",
                          body: "Cashback 20%",
                        ),
//  استخدام SizedBox  مع  .h
                        CustomTitleHome(title: "categories".tr),
                        _buildCategoriesList(),
                        SizedBox(height: 20.h),
                        CustomTitleHome(title: "productForYou".tr),
                      ],
                    ),
                  ),
                ),
                _buildProductsGrid(), //  استخدام SliverGrid  لعرض المنتجات
              ],
            ),
          ),
        ),
      ),
    );
  }

  //  دالة لعرض قائمة  categories  أفقية
  Widget _buildCategoriesList() {
    return SizedBox(
      height: 180.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 10.w), //  إضافة مساحة جانبية
        separatorBuilder: (_, __) => SizedBox(width: 10.w),
        itemCount: homeController.categories.length,
        itemBuilder: (_, index) => CategoriesWidget(
          index: index,
          categoriesModel: CategoriesModel.fromJson(
            homeController.categories[index],
          ),
        ),
      ),
    );
  }

  //  دالة لعرض  products  في شبكة
  Widget _buildProductsGrid() {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 20.h,
          childAspectRatio: 0.6, //  ضبط نسبة العرض إلى الارتفاع للعناصر
        ),
        delegate: SliverChildBuilderDelegate(
          (_, index) => ItemsHome(
            itemsModel: ItemsModel.fromJson(homeController.items[index]),
          ),
          childCount: homeController.items.length,
        ),
      ),
    );
  }
}
