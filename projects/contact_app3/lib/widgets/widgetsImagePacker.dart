import 'dart:io';

import 'package:contact_app3/widgets/widgetUserName.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../Utils/app_colors.dart';

class Widgetsimagepacker extends StatelessWidget {
  File? file;


  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 143.w,
          height: 146.h,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColors.Gold),
            borderRadius: BorderRadius.circular(28.r),
            image: file != null
                ? DecorationImage(
                    image: AssetImage(file!.path),
                    fit: BoxFit.fill,
                  )
                : null,
          ),
          child: file == null
              ? Lottie.asset('assets/animations/image_picker.json')
              : null,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16,left: 16),
          child: UserNmae(
            name: '',
            phone: '',
            email: '',

          ),
        ),
      ],
    );
  }
}
