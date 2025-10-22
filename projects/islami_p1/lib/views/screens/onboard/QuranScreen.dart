import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:islami_p1/views/widgets/Custom_body.dart';

import '../../App_style/app_assets.dart';



class QuranScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return CustomBody(image: AppAssets.Quran,
        text1: 'Reading the Quran',
    text2: 'Read,and your lord is the Most Generous',);
  }
}
