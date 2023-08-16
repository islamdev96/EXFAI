import '../../all_export.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColor.primaryColor,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColor.primaryColor),
    titleTextStyle: TextStyle(
      color: AppColor.primaryColor,
      fontWeight: FontWeight.bold,
      fontFamily: "PlayfairDisplay",
      fontSize: 25,
    ),
    backgroundColor: AppColor.backgroundcolor,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.primaryColor,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: AppColor.fontsColors,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: AppColor.fontsColors,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColor.fontsColors,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      height: 2,
      color: AppColor.fontsColors,
      fontSize: 14,
    ),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColor.primaryColor,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColor.primaryColor),
    titleTextStyle: TextStyle(
      color: AppColor.primaryColor,
      fontWeight: FontWeight.bold,
      fontFamily: "Cairo",
      fontSize: 25,
    ),
    backgroundColor: AppColor.backgroundcolor,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: AppColor.fontsColors,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.fontsColors,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: AppColor.fontsColors,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColor.fontsColors,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      height: 2,
      color: AppColor.fontsColors,
      fontSize: 12,
    ),
    bodySmall: TextStyle(
      height: 2,
      color: AppColor.fontsColors,
      fontSize: 10,
    ),
  ),
  primarySwatch: Colors.blue,
);
