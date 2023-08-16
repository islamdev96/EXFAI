import 'package:exfai/test/2.dart';
import 'package:exfai/view/Settings/language_selection_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../all_export.dart';

SettingsController controller = Get.put(SettingsController());

class SettingCard extends StatelessWidget {
  const SettingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.find();

    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          _buildSettingsTile(
            Icons.card_travel,
            "orders".tr,
            () {
              Get.toNamed(AppRoute.orderspending);
            },
          ),
          const Divider(),
          _buildSettingsTile(
            Icons.abc_sharp,
            "3D Page",
            () {
              Get.to(const Show3DPageWidget());
            },
          ),
          const Divider(),
          _buildSettingsTile(
            Icons.location_on_outlined,
            "address".tr,
            () {
              Get.toNamed(AppRoute.addressview);
            },
          ),
          const Divider(),
          _buildSettingsTile(
            Icons.phone_callback_outlined,
            "contactUs".tr,
            () {
              launch('tel://01065807020');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.safety_check,
              color: AppColor.primaryColor,
            ),
            title: Text("changeLanguage".tr),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              _showLanguageSelectionDialog(context, localeController);
            },
          ),
          const Divider(),
          const Divider(),
          ListTile(
            // leading: const Icon(
            //   Icons.exit_to_app,
            //   color: AppColor.primaryColor,
            // ),
            title: Text("logout".tr),
            trailing: const Icon(Icons.exit_to_app),
            onTap: () {
              controller.logout();
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}

void _showLanguageSelectionDialog(
  BuildContext context,
  LocaleController controller,
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return LanguageSelectionDialog(controller: controller);
    },
  );
}

void _showSignOutConfirmationDialog(
  BuildContext context,
  SettingsController controller,
  // = Get.put(SettingsController());
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Confirm Sign Out"),
        content: const Text("Are you sure you want to sign out?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          TextButton(
            style: const ButtonStyle(),
            onPressed: () {
              controller.logout();
              // Perform sign out logic here
              // Navigator.pop(context);
            },
            child: const Text("Sign Out"),
          ),
        ],
      );
    },
  );
}

Container _buildDivider() {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 8.0,
    ),
    width: double.infinity,
    height: 1.0,
    color: Colors.grey.shade400,
  );
}

Widget _buildSettingsTile(IconData icon, String title, VoidCallback onTap) {
  return ListTile(
    onTap: onTap,
    leading: Icon(
      icon,
      color: AppColor.primaryColor,
    ),
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
    trailing: const Icon(Icons.keyboard_arrow_right),
  );
}
