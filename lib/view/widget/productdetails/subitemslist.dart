import '../../../all_export.dart';

class SubitemsList extends GetView<ProductDetailsControllerImp> {
  const SubitemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          controller.subitems.length,
          (index) => Container(
            margin: const EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 5),
            height: 60,
            width: 90,
            decoration: BoxDecoration(
                color: controller.subitems[index]['active'] == "1"
                    ? AppColors.primary
                    : Colors.white,
                border: Border.all(color: AppColors.primary),
                borderRadius: BorderRadius.circular(10)),
            child: Text(controller.subitems[index]['name'],
                style: TextStyle(
                    color: controller.subitems[index]['active'] == "1"
                        ? AppColors.primary
                        : AppColors.primary,
                    fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );
  }
}
