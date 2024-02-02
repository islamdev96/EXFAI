import '../../../all_export.dart';

class CustomCardHome extends GetView<HomeControllerImp> {
  final String title;
  final String body;
  const CustomCardHome({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(children: [
        Container(
          alignment: Alignment.center,
          height: 150,
          decoration: BoxDecoration(
              color: AppColor.secondaryBackground,
              borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            title: Text(title,
                style: const TextStyle(
                    color: AppColor.secondaryText, fontSize: 20)),
            subtitle: Text(body,
                style:
                    const TextStyle(color: AppColor.primaryText, fontSize: 30)),
          ),
        ),
        // Positioned(
        //   top: -5.h,
        //   right: controller.lang == "en" ? -5.h : null,
        //   left: controller.lang == "ar" ? -5.h : null,
        //   child: Container(
        //     height: 140.h,
        //     width: 140.w,
        //     decoration: BoxDecoration(
        //         color: AppColor.secondColor,
        //         borderRadius: BorderRadius.circular(160.spMax)),
        //   ),
        // )
      ]),
    );
  }
}
