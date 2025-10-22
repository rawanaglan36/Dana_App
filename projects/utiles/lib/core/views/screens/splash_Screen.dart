import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:utiles/core/views/screens/home_screen.dart';

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
        return HomeScreen();
      },));
    },);
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/recipesApp.png")),
            SpinKitDancingSquare(
              color: Colors.red,
              size: 100,
            )
      
          ],
        ),
      ),
    );
  }
}
