import 'package:contact_app3/Utils/app_style.dart';
import 'package:contact_app3/widgets/floating_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../Utils/app_colors.dart';

class ContactWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset('assets/animations/empty_list.json'),
        TextButton(
          onPressed: () {},
          child: Text(
            AppStyle.contactWidget,
            style: AppStyle.style,
            ),
          ),
        SizedBox(height: 200.h),
        FloatingSheet(),
      ],
    );
  }
}
