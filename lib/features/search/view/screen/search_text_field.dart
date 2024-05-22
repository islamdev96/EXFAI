import 'package:exfai/features/search/view/screen/search_delegate.dart';

import '../../../../all_export.dart';

class SearchTextField extends StatelessWidget {
  final Function()? onTap;

  const SearchTextField({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());

    return TextField(
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
      readOnly: true, // Make the text field read-only to prevent direct typing
      decoration: const InputDecoration(
          hintText: "ابحث عن كتاب", // Placeholder text
          prefixIcon: Icon(Icons.search), // Search icon
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey),
              borderRadius: BorderRadius.all(Radius.circular(
                  55))) // Optional: Add border around the text field
          ),
    );
  }
}
