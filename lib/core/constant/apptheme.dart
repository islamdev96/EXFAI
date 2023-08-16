import '../../all_export.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColor.primaryBackground,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColor.primaryBackground),
    titleTextStyle: TextStyle(
      color: AppColor.primaryBackground,
      fontWeight: FontWeight.bold,
      fontFamily: "PlayfairDisplay",
      fontSize: 25,
    ),
    backgroundColor: AppColor.primaryBackground,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.primaryBackground,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: AppColor.primaryText,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: AppColor.primaryText,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColor.primaryText,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      height: 2,
      color: AppColor.primaryText,
      fontSize: 14,
    ),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColor.primaryBackground,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColor.primaryBackground),
    titleTextStyle: TextStyle(
      color: AppColor.primaryBackground,
      fontWeight: FontWeight.bold,
      fontFamily: "Cairo",
      fontSize: 25,
    ),
    backgroundColor: AppColor.primaryBackground,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: AppColor.primaryText,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.primaryText,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: AppColor.primaryText,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColor.primaryText,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      height: 2,
      color: AppColor.primaryText,
      fontSize: 12,
    ),
    bodySmall: TextStyle(
      height: 2,
      color: AppColor.primaryText,
      fontSize: 10,
    ),
  ),
  primarySwatch: Colors.blue,
);
