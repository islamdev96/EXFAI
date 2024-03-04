import '../all_export.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  final List<Widget> listPage = [
    const HamzaHome(),
    const SettingsPage(),
  ];

  final List<Map<String, dynamic>> bottomappbar = [
    {"title": "Home", "icon": Icons.home},
    {"title": "Settings", "icon": Icons.settings},
  ];

  @override
  // ignore: avoid_renaming_method_parameters
  changePage(int i) {
    currentpage = i;
    update();
  }
}
