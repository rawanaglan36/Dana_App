
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../App_style/app_colors.dart';

class CustomNext extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData? icon;
  const CustomNext({required this.onTap, required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.greenColor,

            shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(14),
            ),
          ),
          onPressed: () {
            onTap();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: AppColors.whiteColor),
              SizedBox(width: width * 0.032),
              Text(
                text,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
