import '../../all_export.dart';

class LanguageSelectionDialog extends StatelessWidget {
  final LocaleController controller;

  const LanguageSelectionDialog({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: _buildDialogContent(context),
    );
  }

  Widget _buildDialogContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "chooseTheLanguage".tr,
            style: const TextStyle(
              color: AppColor.primary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLanguageOption(context, "english".tr, "en"),
              _buildLanguageOption(context, "arabic".tr, "ar"),
            ],
          ),
          // Add more language options as needed
          // Add more language options as needed
        ],
      ),
    );
  }

  Widget _buildLanguageOption(
      BuildContext context, String languageName, String languageCode) {
    return InkWell(
      onTap: () {
        controller.changeLang(languageCode);
        Navigator.pop(context); // Close the dialog
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          languageName,
          style: const TextStyle(
            color: AppColor.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
