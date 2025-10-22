

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:islami_p1/views/widgets/Custom_body.dart';

import '../../App_style/app_assets.dart';


class DoaaScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return CustomBody(image: AppAssets.Doaa,
        text1: 'Bearish',
    text2: 'Praise the name of your lord , the Most \n High ',
    );
  }
}
