import '../../all_export.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColor.secondaryBackground,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColor.secondaryBackground),
    titleTextStyle: TextStyle(
      color: AppColor.secondaryBackground,
      fontWeight: FontWeight.bold,
      fontFamily: "PlayfairDisplay",
      fontSize: 25,
    ),
    backgroundColor: AppColor.secondaryBackground,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.secondaryBackground,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: AppColor.primary,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: AppColor.primary,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColor.primary,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      height: 2,
      color: AppColor.primary,
      fontSize: 14,
    ),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColor.secondaryBackground,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColor.secondaryBackground),
    titleTextStyle: TextStyle(
      color: AppColor.secondaryBackground,
      fontWeight: FontWeight.bold,
      fontFamily: "Cairo",
      fontSize: 25,
    ),
    backgroundColor: AppColor.secondaryBackground,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: AppColor.primary,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.primary,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: AppColor.primary,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColor.primary,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      height: 2,
      color: AppColor.primary,
      fontSize: 12,
    ),
    bodySmall: TextStyle(
      height: 2,
      color: AppColor.primary,
      fontSize: 10,
    ),
  ),
  primarySwatch: Colors.blue,
);
