import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../App_style/app_colors.dart';

class CustomBody extends StatelessWidget {
  final String image;
  final String text1;
  final String? text2;
  const CustomBody({required this.image,required this.text1,this.text2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/images/firstScreen.png"),
          Image.asset(image),
          Text(
            text1,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: AppColors.goldColor),
          ),
          if(text2!=null)
            Text(text2!,
              textAlign: TextAlign.center,
              style: TextStyle(

                color: AppColors.goldColor,
                fontSize: 20,

              ),
            )
        ],
      ),
    );
  }
}
