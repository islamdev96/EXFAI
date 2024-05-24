import '../../all_export.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  final List<String> _navigationRoutes = [
    AppRoute.homepage,
    AppRoute.cart,
    AppRoute.settingsPage,

    // AppRoute.bookView,
  ];

  final List<IconData> _navigationIcons = [
    Icons.home_filled,
    Icons.card_travel,
    Icons.settings,
  ];

  final List<String> _navigationLabels = [
    'home'.tr,
    'cart'.tr,
    'more'.tr,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Get.offAllNamed(_navigationRoutes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: List.generate(
        _navigationIcons.length,
        (index) => BottomNavigationBarItem(
          icon: Icon(_navigationIcons[index]),
          label: _navigationLabels[index],
        ),
      ),
      currentIndex: _selectedIndex,
      selectedItemColor: AppColors.primary3,
      unselectedItemColor: AppColors.primary3,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
    );
  }
}
