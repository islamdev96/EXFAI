import 'package:exfai/features/search/view/screen/search_delegate.dart';

import '../all_export.dart';

class SearchTextField extends StatelessWidget {
  final Function()? onTap;

  const SearchTextField({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());

    return TextField(
      cursorColor: AppColor.red,
      onTap: () {
        showSearch(
          context: context,
          delegate: AddBookSearchDelegate(
            addBookModel: controller.addbook
                .map((map) => AddBookModel.fromJson(map))
                .toList(),
          ),
        );
      },
      readOnly: true, // Make the text field read-only to prevent direct typing
      decoration: const InputDecoration(
          hintText: "ابحث عن الكتاب", // Placeholder text
          prefixIcon: Icon(Icons.search), // Search icon
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.red),
              borderRadius: BorderRadius.all(Radius.circular(
                  55))) // Optional: Add border around the text field
          ),
    );
  }
}
