
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class MyThemeData{
  static final ThemeData lightTheme=ThemeData(
    textTheme: TextTheme(
      displayMedium: GoogleFonts.cairo(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: AppColors.blackColor,
      )
    )
  );
}