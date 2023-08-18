import 'package:exfai/view/Settings/settings_page.dart';

import '../all_export.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  final List<Widget> listPage = [
    const HomePage(),
    const SettingsPage(),
  ];

  final List<Map<String, dynamic>> bottomappbar = [
    {"title": "Home", "icon": Icons.home},
    {"title": "Settings", "icon": Icons.settings},
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
