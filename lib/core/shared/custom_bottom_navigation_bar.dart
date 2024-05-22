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
    AppRoute.myFavroite,
    AppRoute.homepage,

    // AppRoute.bookView,
  ];

  final List<IconData> _navigationIcons = [
    Icons.home_filled,
    Icons.favorite_outlined,
    Icons.home_filled,
  ];

  final List<String> _navigationLabels = [
    'الرئيسية',
    'المفضلة',
    'الرئيسية',
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
      selectedItemColor: AppColors.primary33,
      unselectedItemColor: AppColors.primary33,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
    );
  }
}
