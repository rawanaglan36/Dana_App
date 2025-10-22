import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../App_style/app_assets.dart';
import '../App_style/app_colors.dart';

class CustomTextform extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Sura Name",
        hintStyle: TextStyle(
            color: AppColors.suraName
        ),
        prefixIcon: ImageIcon(AssetImage(AppAssets.quran_navBar),color: AppColors.goldColor),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                color: AppColors.goldColor,
                width: 2
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                color: AppColors.goldColor,
                width: 2
            )
        ),
      ),
    );
  }
}
