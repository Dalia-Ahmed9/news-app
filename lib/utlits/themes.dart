import 'package:flutter/material.dart';
import 'package:news_app2/utlits/colors.dart';

ThemeData lightthememode(contect) {
  return ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: AppColors.LightAppBar),
    scaffoldBackgroundColor: AppColors.LightBackground,
    textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: 18, color: AppColors.LightTitletext),
        bodyText2: TextStyle(fontSize: 12, color: AppColors.LightDatetext)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.LightNavSelectedItem,
      unselectedItemColor: AppColors.LightNavUnSelectedItem,
      type: BottomNavigationBarType.fixed,
      elevation: 10,
    ),
  );
}

ThemeData darkthememode(context) {
  return ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: AppColors.darkAppBar),
    scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: 18, color: AppColors.darkTitletext),
        bodyText2: TextStyle(fontSize: 14, color: AppColors.darkDatetext)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.darkNavSelectedItem,
      unselectedItemColor: AppColors.darkNavUnSelectedItem,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.darkNavigationBar,
      elevation: 10,
    ),
  );
}
