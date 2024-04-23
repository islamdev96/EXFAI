import '../../../all_export.dart';

class TopCardCart extends StatelessWidget {
  final String message;
  const TopCardCart({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      // height: 20,
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(message,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.black, fontSize: 16.sp)),
    );
  }
}
