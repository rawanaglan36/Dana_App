import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:space/screens/navegate_screen.dart';
import 'package:space/screens/zero_screen.dart';

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
      return Navigator.pushReplacement(context, MaterialPageRoute
        (builder: (context) {
          return NavegateScreen();
        },));
    },);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/space.png",
            fit: BoxFit.cover,)),
       SpinKitDancingSquare(
         color: Colors.white,
         size: 100,
       )
        ],
      ),
    );
  }}
