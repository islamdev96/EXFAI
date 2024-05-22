import 'package:exfai/view/Settings/setting_card.dart';

import '../../all_export.dart'; // Assuming this imports your assets and theme

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Consider moving this to your controller for better state management
    // final LocaleController localeController = Get.find();

    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Settings"), // Or use localized text
        backgroundColor: AppColors.primary, // Use theme color
        elevation: 0, // For a clean look
      ),
      body: const SingleChildScrollView(
        // Allows scrolling if content overflows
        child: Column(
          children: [
            ProfileHeader(),
            SizedBox(height: 20),
            SettingsCardList(),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: Get.width / 3,
          color: AppColors.primary, // Matching background
        ),
        Positioned(
          top: Get.width / 3.9,
          child: const CircleAvatar(
            radius: 40,
            backgroundColor: AppColors.secondaryBackground,
            backgroundImage: AssetImage(AppImageAsset.avatar),
          ),
        ),
        Positioned(
          // Add user name below the avatar
          top: Get.width / 2.5,
          child: const Text(
            "User Name", // Fetch actual username dynamically
            style: TextStyle(
              color: AppColors.secondaryBackground,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class SettingsCardList extends StatelessWidget {
  const SettingsCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SettingCard(), // Your custom setting card
          SizedBox(height: 16),
          // Add more SettingCard widgets as needed
        ],
      ),
    );
  }
}
