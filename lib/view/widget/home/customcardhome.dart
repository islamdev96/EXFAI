import '../../../all_export.dart';

class CustomCardHome extends GetView<HomeControllerImp> {
  final String title;
  final String body;
  const CustomCardHome({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(children: [
        Container(
          alignment: Alignment.center,
          height: 150,
          decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            title: Text(title,
                style: const TextStyle(color: AppColor.black, fontSize: 20)),
            subtitle: Text(body,
                style: const TextStyle(color: AppColor.black, fontSize: 30)),
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
