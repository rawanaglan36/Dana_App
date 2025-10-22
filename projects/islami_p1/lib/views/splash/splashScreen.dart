import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


import 'package:islami_p1/views/screens/onboard/onBoard.dart';

import '../App_style/app_assets.dart';
import '../screens/Home/homeScreen.dart';


class SplashScreen extends StatefulWidget {
  static const String routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 5), () {
      return Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.Splash),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
