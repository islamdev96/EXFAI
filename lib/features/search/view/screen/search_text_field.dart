import 'package:exfai/features/search/view/screen/search_delegate.dart';

import '../../../../all_export.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Search bar
          Expanded(
            child: GestureDetector(
              onTap: () {
                showSearch(
                  context: context,
                  delegate: ItemsSearchDelegate(
                    itemsModel: controller.items
                        .map((map) => ItemsModel.fromJson(map))
                        .toList(),
                  ),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: AppColors.grey),
                    const SizedBox(width: 8),
                    Text(
                      "findAProduct".tr,
                      style: const TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Logo image
          const SizedBox(width: 16), // Spacing between search bar and image
          Image.asset(
            AppImageAsset.appLogo,
            height: 40, // Adjust height as needed
          ),
        ],
      ),
    );
  }
}
