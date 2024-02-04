import 'package:exfai/view/Settings/setting_card.dart';

import '../../all_export.dart';
import 'package:flutter/cupertino.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.find();
    Color mainSystemColor = CupertinoColors.systemBackground;

    return Container(
      color: mainSystemColor,
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: Get.width / 3,
                color: AppColor.primaryBackground,
              ),
              Positioned(
                top: Get.width / 3.9,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColor.primaryBorder,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundColor: AppColor.secondaryBackground,
                    backgroundImage: AssetImage(AppImageAsset.avatar),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const SettingCard(),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
