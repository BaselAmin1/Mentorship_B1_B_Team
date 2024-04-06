import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:space_x/core/theming/colors.dart';

final ThemeData lightTheme = ThemeData(
  tabBarTheme: const TabBarTheme(
    indicatorColor: AppColors.primaryColor,
    labelColor: AppColors.primaryColor,
    unselectedLabelColor: Colors.grey,
    indicatorSize: TabBarIndicatorSize.label,
    dividerColor: AppColors.scaffoldBackground,
    indicator: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      color: AppColors.scaffoldBackground,
    ),
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    scrolledUnderElevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    backgroundColor: AppColors.appBarColor,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.bottomNavLightThemeBackground,
    selectedItemColor: AppColors.primaryColor,
    unselectedItemColor: Colors.grey,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    elevation: 12,
  ),
  scaffoldBackgroundColor: AppColors.scaffoldBackground,
  primaryColor: Colors.black,
  colorScheme: const ColorScheme.light(
    primary: AppColors.buttonBackGroundColor,
  ),
);
