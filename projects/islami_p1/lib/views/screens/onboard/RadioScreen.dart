import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:islami_p1/views/widgets/Custom_body.dart';

import '../../App_style/app_assets.dart';
class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBody(image: AppAssets.Radio,
        text1: 'Holy Quran Radio',
    text2: 'You can listen to the Holy Quran Radio \n through the application for free and easily ');
  }
}
