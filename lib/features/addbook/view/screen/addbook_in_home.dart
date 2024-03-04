import 'package:exfai/features/addbook/view/widget/widget_addbook_in_home.dart';

import '../../../../all_export.dart';

class AddBookInHome extends GetView<HomeControllerImp> {
  const AddBookInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        (controller.addbook.length / 2).ceil(),
        (index) => Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: WidgetAddBookInHome(
                addBookModel:
                    AddBookModel.fromJson(controller.addbook[index * 2]),
              ),
            ),
            const SizedBox(width: 10), // Add some space between products
            Expanded(
              child: (index * 2 + 1 < controller.addbook.length)
                  ? WidgetAddBookInHome(
                      addBookModel: AddBookModel.fromJson(
                          controller.addbook[index * 2 + 1]),
                    )
                  : const SizedBox(), // Use SizedBox if there are no more products to display
            ),
          ],
        ),
      ),
    );
  }
}
