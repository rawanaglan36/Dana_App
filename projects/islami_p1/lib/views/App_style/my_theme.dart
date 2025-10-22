import 'package:flutter/material.dart';

import 'app_colors.dart';

class MyTheme{
  ///create object
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.darkColor,
      backgroundColor: AppColors.goldColor,
      showSelectedLabels: true,

    ),
appBarTheme: AppBarTheme(
  backgroundColor: AppColors.darkColor ,
 iconTheme: IconThemeData(
   color: AppColors.goldColor
 )
)
  );
}