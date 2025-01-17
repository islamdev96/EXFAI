import '../../../all_export.dart';

class TopProductPageDetails extends GetView<ProductDetailsControllerImp> {
  const TopProductPageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180,
          decoration: const BoxDecoration(color: AppColors.secondaryBackground),
        ),
        Positioned(
          top: 30.0,
          right: Get.width / 8,
          left: Get.width / 8,
          child: Hero(
            tag: "${controller.itemsModel.itemsId}",
            child: CachedNetworkImage(
              imageUrl:
                  "${AppLink.imagestItems}/${controller.itemsModel.itemsImage!}",
              height: 250,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
