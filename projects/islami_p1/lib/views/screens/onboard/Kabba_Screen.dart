import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:islami_p1/views/widgets/Custom_body.dart';

import '../../App_style/app_assets.dart';



class KabbaScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return CustomBody(image: AppAssets.Kabba,
        text1: 'Welcome To Islami',
    text2: 'We Are Excited To Have You In Our \n Community',

    );
  }
}
