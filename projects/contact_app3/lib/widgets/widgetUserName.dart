import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/app_colors.dart';

class UserNmae extends StatelessWidget {
   String name ;
   String phone ;
   String email ;
  UserNmae({
    required this.name,
    required this.phone,
    required this.email });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            color: AppColors.Gold,
          ),
        ),
        Container(width: 192.w,color: AppColors.Gold,height: 1.h),
        SizedBox(height: 12,),
        Text(
          phone,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            color: AppColors.Gold,
          ),
        ),
        Container(width: 192.w,color: AppColors.Gold,height: 1.h),
        SizedBox(height: 12,),
        Text(
          email,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            color: AppColors.Gold,
          ),
        ),
        Container(width: 192.w,color: AppColors.Gold,height: 1.h),
      ],
    );
  }

}
