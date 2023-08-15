import 'package:exfai/test/2.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../all_export.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return Container(
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(height: Get.width / 3, color: AppColor.primaryColor),
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    onTap: () {
                      Get.toNamed(AppRoute.orderspending);
                    },
                    trailing: const Icon(Icons.card_travel),
                    title: Text("orders".tr),
                  ),
                  IconButton(
                      onPressed: () {
                        Get.to(const Show3DPageWidget());
                      },
                      icon: const Icon(Icons.abc_sharp)),
                  ListTile(
                    onTap: () {
                      Get.toNamed(AppRoute.addressview);
                    },
                    trailing: const Icon(Icons.location_on_outlined),
                    title: Text("address".tr),
                  ),
                  ListTile(
                    onTap: () {
                      launch(
                        'tel://01065807020',
                      );
                    },
                    trailing: const Icon(Icons.phone_callback_outlined),
                    title: Text("contactUs".tr),
                  ),
                  ListTile(
                    onTap: () {
                      controller.logout();
                    },
                    title: Text("logout".tr),
                    trailing: const Icon(Icons.exit_to_app),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Card(
            elevation: 4.0,
            margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(
                    Icons.lock_outline,
                    color: AppColor.primaryColor,
                  ),
                  title: const Text("Change Password"),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    //open change password
                  },
                ),
                _buildDivider(),
                ListTile(
                  leading: const Icon(
                    Icons.safety_check,
                    color: AppColor.primaryColor,
                  ),
                  title: const Text("Change Language"),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    // Show the language selection dialog
                    _showLanguageSelectionDialog(context, controller);
                  },
                ),
                _buildDivider(),
                ListTile(
                  leading: const Icon(
                    Icons.location_on,
                    color: AppColor.primaryColor,
                  ),
                  title: const Text("Change Location"),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    //open change location
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  //////////////////////////////////////////////////////////
  void _showLanguageSelectionDialog(
    BuildContext context,
    LocaleController controller,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
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
      },
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
        // Update the entire app's locale
        MyApp.setLocale(context, Locale(languageCode));
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

///////////////////////////////////////////////////////////

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
}
