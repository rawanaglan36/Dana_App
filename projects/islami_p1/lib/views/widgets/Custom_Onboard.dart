

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../App_style/app_colors.dart';



class CustomOnboard extends StatelessWidget {
  final bool Active;
  ///لو active عيدين color ,ولو مش active هيديني color تامي
  CustomOnboard({required this .Active});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          ///كبر العرض ف حاله ال active
          width: Active?30:10,
          height: 10,
          duration: Duration(milliseconds: 250),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
            color: Active?AppColors.goldColor:Colors.grey,
          ),
        ),
      ],
    );
  }
}
