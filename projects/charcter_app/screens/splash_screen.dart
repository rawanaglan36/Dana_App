import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashCharcter extends StatefulWidget {


  @override
  State<SplashCharcter> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashCharcter> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3,),() {
      return Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },));
    },);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/g.png'),
          
        ],
      ),

    );
  }
}
