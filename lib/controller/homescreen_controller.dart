import 'package:exfai/view/Settings/settings_page.dart';

import '../../all_export.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [const HomePage(), const SettingsPage()];

  List bottomappbar = [
    {"title": "home", "icon": Icons.home},
    {"title": "settings", "icon": Icons.settings}
  ];

  @override
  changePage(int i) {
    if (i >= 0 && i < listPage.length) {
      currentpage = i;
      update();
    }
  }
}
