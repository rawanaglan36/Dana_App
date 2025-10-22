import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyle{
  static TextStyle boald16=GoogleFonts.cairo(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor

  );
  static TextStyle boald2=GoogleFonts.lato(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColors.darkGreyColor

  );
}