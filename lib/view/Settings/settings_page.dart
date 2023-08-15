import 'package:exfai/test/2.dart';
import 'package:url_launcher/url_launcher.dart';
import 'language_selection_dialog.dart';
import '../../all_export.dart';

SettingsController controller = Get.put(SettingsController());

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.find();

    return Container(
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: Get.width / 3,
                color: AppColor.primaryColor,
              ),
              Positioned(
                top: Get.width / 3.9,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[100],
                    backgroundImage: const AssetImage(AppImageAsset.avatar),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              elevation: 4.0,
              margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  _buildSettingsTile(
                    Icons.card_travel,
                    "Orders",
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
                    "Address",
                    () {
                      Get.toNamed(AppRoute.addressview);
                    },
                  ),
                  const Divider(),
                  _buildSettingsTile(
                    Icons.phone_callback_outlined,
                    "Contact Us",
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
                    title: const Text("Change Language"),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      _showLanguageSelectionDialog(context, localeController);
                    },
                  ),
                  const Divider(),
                  // ListTile(
                  //   leading: const Icon(
                  //     Icons.location_on,
                  //     color: AppColor.primaryColor,
                  //   ),
                  //   title: const Text("Change Location"),
                  //   trailing: const Icon(Icons.keyboard_arrow_right),
                  //   onTap: () {
                  //     // _showSignOutConfirmationDialog(context, controller);
                  //   },
                  // ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
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
                Navigator.pop(context);
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
}
