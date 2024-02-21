import '../../../all_export.dart';

class SubitemsList extends GetView<ProductDetailsControllerImp> {
  const SubitemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        controller.subitems.length,
        (index) => GestureDetector(
          onTap: () {
            // Handle onTap event here
            // For example, update the active status of the subitem
            // controller.toggleSubitemActive(index);
          },
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 5),
            height: 60,
            width: 90,
            decoration: BoxDecoration(
              color: controller.subitems[index]['active'] == "1"
                  ? AppColor.primary
                  : Colors.white,
              border: Border.all(color: AppColor.primary),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              controller.subitems[index]['name'],
              style: TextStyle(
                color: controller.subitems[index]['active'] == "1"
                    ? Colors.white // Change text color when active
                    : AppColor.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
