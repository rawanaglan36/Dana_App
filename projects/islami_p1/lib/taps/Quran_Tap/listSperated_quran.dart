import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_p1/model/SuraModel.dart';
import 'package:islami_p1/taps/Quran_Tap/sura_deatails.dart';
import '../../views/App_style/app_colors.dart';

import 'listView_quran.dart';


class CustomListsperated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: false,
      physics: ScrollPhysics(),
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) {
        return Divider(
          color: AppColors.goldColor,
          thickness: 2,
          endIndent: 30.5,
          indent: 30.5,
        );
      },
      itemCount: SuraModel.getSuraItemCount(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            Navigator.of(context).pushNamed(SuraDetails.routeName,arguments:
            SuraModel.getSuraModel(index));
          },
          child: CustomListview(
            suraModel: SuraModel.getSuraModel(index),
          ),
        );
      },
    );
  }
}
