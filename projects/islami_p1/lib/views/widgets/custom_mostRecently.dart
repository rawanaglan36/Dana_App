import 'package:flutter/cupertino.dart';
import 'package:islami_p1/model/SuraModel.dart';

import '../../model/SuraModel.dart';
import '../App_style/app_assets.dart';
import '../App_style/app_colors.dart';

class CustomMostRecently extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.centerLeft,
      width: 283,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.goldColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 17),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  'Al-Anbiya',
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'الانبياء',
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '112 Verses',
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Image.asset(AppAssets.al_anbiyaa)

          ],
        ),
      ),
    );
  }
}
