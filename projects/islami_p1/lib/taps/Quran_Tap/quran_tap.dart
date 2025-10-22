import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:islami_p1/views/App_style/app_assets.dart';
import 'package:islami_p1/views/App_style/app_colors.dart';

import 'package:islami_p1/views/widgets/custom_mostRecently.dart';
import 'package:islami_p1/views/widgets/custom_textForm.dart';

import 'listSperated_quran.dart';

class QuranTap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppAssets.firstScreen),
          CustomTextform(),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Most Recently',
              style: TextStyle(
                color: AppColors.suraName,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 10),
          CustomMostRecently(),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Suras List :',

              style: TextStyle(
                color: AppColors.suraName,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Expanded(
            child: CustomListsperated( ),
          ),
        ],
      ),
    );
  }
}
