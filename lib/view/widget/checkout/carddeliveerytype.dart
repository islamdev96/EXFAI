import '../../../all_export.dart';

class CardDeliveryTypeCheckout extends StatelessWidget {
  final String imagename;
  final String title;
  final bool active;
  const CardDeliveryTypeCheckout(
      {Key? key,
      required this.imagename,
      required this.title,
      required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          color: active ? AppColor.primaryBackground : null,
          border: Border.all(color: AppColor.primaryBackground)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          imagename,
          width: 60,
          color: active ? AppColor.primaryText : null,
        ),
        Text(
          title,
          style: TextStyle(
              color: active ? AppColor.primaryText : AppColor.primaryText,
              fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
