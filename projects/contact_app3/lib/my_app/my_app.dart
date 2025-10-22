import 'package:contact_app3/screens/home_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/splash_screen.dart';

class ContactApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(402, 874),
      minTextAdapt: true,
      splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
           debugShowCheckedModeBanner: false,
            home:SplashScreen(),
          );
        },
    );
  }
}