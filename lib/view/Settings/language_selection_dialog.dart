import '../../all_export.dart';

class LanguageSelectionDialog extends StatelessWidget {
  final LocaleController controller;

  const LanguageSelectionDialog({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero, // Remove default content padding
      title: Text("chooseTheLanguage".tr),
      content: _buildLanguageOptions(context),
    );
  }

  Widget _buildLanguageOptions(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColor.primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLanguageOption(context, "english".tr, "en"),
          _buildLanguageOption(context, "arabic".tr, "ar"),
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          languageName,
          style: const TextStyle(color: AppColor.fontsColors, fontSize: 16),
        ),
      ),
    );
  }
}
