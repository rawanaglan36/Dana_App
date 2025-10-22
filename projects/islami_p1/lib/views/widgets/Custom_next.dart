import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_p1/views/screens/Home/homeScreen.dart';

import '../App_style/app_colors.dart';

class CustomNext extends StatelessWidget {
 final PageController controller;
 final int index;
 const CustomNext({required this.controller,required this.index});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: () {
        controller.animateToPage(
          index+1,
          duration: Duration(milliseconds: 250),
          curve: Curves.linear,
        );
      },
      child: Text(
        'Next',
        style: TextStyle(
          color: AppColors.goldColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
