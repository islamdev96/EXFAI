import '../../../all_export.dart';

class WidgetFAQ extends StatelessWidget {
  final String question;
  final String answer;

  const WidgetFAQ({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center widget added
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .center, // Align content in the center horizontally
          children: [
            SizedBox(height: 10.h),
            Text(
              question,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Center align text
            ),
            SizedBox(height: 10.h),
            Text(
              answer,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18.sp,
              ),
              textAlign: TextAlign.center, // Center align text
            ),
            SizedBox(
              height: 32.h,
            ),
            Divider(
              color: AppColors.grey.withAlpha(70),
              indent: 8,
              endIndent: 8,
            ),
            SizedBox(
              height: 32.h,
            ),
          ],
        ),
      ),
    );
  }
}
