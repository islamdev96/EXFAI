// ignore_for_file: avoid_unnecessary_containers

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
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey[100],
                        backgroundImage: const AssetImage(AppImageAsset.avatar),
                      ),
                    )),
              ]),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                // ListTile(
                //   // onTap: () {},
                //   trailing: Switch(onChanged: (val) {}, value: true),
                //   title: Text("disableNotificatios".tr),
                // ),
                ListTile(
                  onTap: () {
                    Get.toNamed(AppRoute.orderspending);
                  },
                  trailing: const Icon(Icons.card_travel),
                  title: Text("orders".tr),
                ),
                // ListTile(
                //   onTap: () {
                //     Get.toNamed(AppRoute.ordersarchive);
                //   },
                //   trailing: const Icon(Icons.card_travel),
                //   title: Text("archive".tr),
                // ),
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

                // ListTile(
                //   onTap: () {},
                //   trailing: const Icon(Icons.help_outline_rounded),
                //   title: Text("aboutUs".tr),
                // ),
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
              ]),
            ),
          )
        ],
      ),
    );
  }
}

launchURL(String url) async {
  // ignore: deprecated_member_use
  if (await launch(
    // forceWebView: true,
    // enableJavaScript: true,
    url,
  )) {
    // // ignore: deprecated_member_use
    // await canLaunch(url);
  } else {
    throw 'Could not launch $url';
  }
}
