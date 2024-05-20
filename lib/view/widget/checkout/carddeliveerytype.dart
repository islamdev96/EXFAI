import '../../../all_export.dart';

class CardDeliveryTypeCheckout extends StatelessWidget {
  final String imagename;
  final String title;
  final bool active;
  const CardDeliveryTypeCheckout(
      {super.key,
      required this.imagename,
      required this.title,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          color: active ? AppColors.secondaryBackground : null,
          border: Border.all(color: AppColors.secondaryBackground)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          imagename,
          width: 60,
          color: active ? AppColors.primary : null,
        ),
        Text(
          title,
          style: TextStyle(
              color: active ? AppColors.primary : AppColors.primary,
              fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
