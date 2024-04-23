import '../../../all_export.dart';

class CustomButtonCart extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;

  // Use Facebook-inspired colors
  final Color buttonColor;
  final Color textColor;

  const CustomButtonCart({
    super.key,
    required this.textbutton,
    this.onPressed,
    this.buttonColor = AppColors.secondaryBackground,
    this.textColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: MaterialButton(
        color: buttonColor,
        textColor: textColor,
        onPressed: onPressed,
        child: Text(
          textbutton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
