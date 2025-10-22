
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../App_style/app_colors.dart';


class CustomTextform extends StatelessWidget {
 final String text;
 final String hintText;
 final IconData? icon;
 const CustomTextform({required this.text,
   required this.hintText,this.icon});
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(text,
          style: TextStyle(
            color: AppColors.boldColor,
          )

        ),
        SizedBox(height: height*0.01,),
        TextFormField(
          textAlign: TextAlign.right,

          decoration: InputDecoration(
           prefixIcon:Icon(icon),
              fillColor: AppColors.whiteColor,
              filled: true,

              hintText: hintText,
              enabledBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.lightGreyColor)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(color: AppColors.lightGreyColor)
              )
          ),
        ),
        SizedBox(height: height*0.02),
      ],
    );
  }
}
