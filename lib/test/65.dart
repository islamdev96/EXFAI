// ignore_for_file: file_names

import 'package:exfai/view/Settings/settings_page.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

import '../all_export.dart';

// This class uses titled_navigation_bar Package
// Link to it :  https://pub.dev/packages/titled_navigation_bar

class TitledNavigationBottomPage extends StatefulWidget {
  static const routeName = '/TitledNavigationBottomPage';

  const TitledNavigationBottomPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TitledNavigationBottomPageState createState() =>
      _TitledNavigationBottomPageState();
}

class _TitledNavigationBottomPageState
    extends State<TitledNavigationBottomPage> {
  final List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(
        title: const Text('Home'), icon: const Icon(Icons.home)),
    TitledNavigationBarItem(
        title: const Text('Favorite'), icon: const Icon(Icons.favorite)),
    // TitledNavigationBarItem(
    //     title: const Text('Chat'), icon: const Icon(Icons.chat)),
    // TitledNavigationBarItem(
    //     title: const Text('Profile'), icon: const Icon(Icons.person_outline)),
    TitledNavigationBarItem(
        title: const Text('Settings'), icon: const Icon(Icons.settings)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            HomePage(),
            // TitledNavigationBottomPage(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Center(child: Text("Profile"))],
            ),
            SettingsPage()
          ],
        ),
      ),
      bottomNavigationBar: TitledBottomNavigationBar(
        onTap: (index) => print("Selected Index: $index"),
        reverse: true,
        curve: Curves.easeInBack,
        items: items,
        activeColor: Colors.red,
        inactiveColor: Colors.blueGrey,
      ),
    );
  }
}
