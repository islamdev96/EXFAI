import 'package:exfai/all_export.dart';

class LanguageSelectionDialog extends StatelessWidget {
  final LocaleController controller;

  const LanguageSelectionDialog({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Select a Language"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildLanguageOption(context, controller, "English", "en"),
          _buildLanguageOption(context, controller, "Arabic", "ar"),
          // Add more language options as needed
        ],
      ),
    );
  }

  Widget _buildLanguageOption(
    BuildContext context,
    LocaleController controller,
    String languageName,
    String languageCode,
  ) {
    return InkWell(
      onTap: () {
        controller.changeLang(languageCode);
        Get.updateLocale(Locale(languageCode)); // Update the locale
        Navigator.pop(context); // Close the dialog
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          languageName,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
