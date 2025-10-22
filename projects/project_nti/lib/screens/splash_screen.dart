import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:project_nti/screens/home_screen.dart';
import 'package:project_nti/screens/nav_screen.dart';

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
      return Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return NavScreen();
          },));
    },);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/lap_store.png')),
          SizedBox(height: 60,),
        SpinKitFadingFour(
            color: Colors.black54,
            size: 100,
          )
        ],
      ),

    );
  }
}
