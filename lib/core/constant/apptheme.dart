import '../../all_export.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.secondaryBackground,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.secondaryBackground),
    titleTextStyle: TextStyle(
      color: AppColors.secondaryBackground,
      fontWeight: FontWeight.bold,
      fontFamily: "PlayfairDisplay",
      fontSize: 25,
    ),
    backgroundColor: AppColors.secondaryBackground,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColors.secondaryBackground,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: AppColors.primary,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: AppColors.primary,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColors.primary,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      height: 2,
      color: AppColors.primary,
      fontSize: 14,
    ),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.secondaryBackground,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.secondaryBackground),
    titleTextStyle: TextStyle(
      color: AppColors.secondaryBackground,
      fontWeight: FontWeight.bold,
      fontFamily: "Cairo",
      fontSize: 25,
    ),
    backgroundColor: AppColors.secondaryBackground,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: AppColors.primary,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColors.primary,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: AppColors.primary,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColors.primary,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      height: 2,
      color: AppColors.primary,
      fontSize: 12,
    ),
    bodySmall: TextStyle(
      height: 2,
      color: AppColors.primary,
      fontSize: 10,
    ),
  ),
  primarySwatch: Colors.blue,
);
