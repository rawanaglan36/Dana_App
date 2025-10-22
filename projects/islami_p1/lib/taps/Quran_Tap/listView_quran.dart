import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_p1/model/SuraModel.dart';

import '../../views/App_style/app_assets.dart';
import '../../views/App_style/app_colors.dart';


class CustomListview extends StatelessWidget {
  SuraModel suraModel ;
  // int number;
  CustomListview({required this.suraModel,});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppAssets.Vector),
            Text('${suraModel.index+1}', style: TextStyle(color: AppColors.goldColor)),
          ],
        ),
        SizedBox(width: 24,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  suraModel.suraEnName,
                  style: TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${suraModel.numberOfVerses} Verses',
                  style: TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Text(
          suraModel.suraArName,
          style: TextStyle(
            color: AppColors.goldColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

      ],
    );
  }
}
