import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:islami_p1/views/widgets/Custom_body.dart';

import '../../App_style/app_assets.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return CustomBody(image: AppAssets.welcomesYou,
        text1: 'Welcome To Islami App',
    );
  }
}
