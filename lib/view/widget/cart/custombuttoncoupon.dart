import '../../../all_export.dart';

class CustomButtonCoupon extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtonCoupon({Key? key, required this.textbutton, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryBackground,
        textColor: AppColor.primaryText,
        onPressed: onPressed,
        child: Text(textbutton,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: AppColor.primaryText)),
      ),
    );
  }
}
