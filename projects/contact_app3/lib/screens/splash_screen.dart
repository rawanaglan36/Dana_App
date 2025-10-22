
import 'package:contact_app3/Utils/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'home_screen.dart';


class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),() {
      return Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return Homescreen();
      },));
    },);
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF29384D),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset(AppAssets.route,
                width: 259,)),
              SizedBox(height: 70,),
              SpinKitHourGlass(
                color: Color(0xFFFFF1D4),
                size: 70,)

            ]
        ),

      ),
    );
  }
}