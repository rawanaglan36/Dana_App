import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:whats_app_nti/screens/home_screen.dart';

import 'login_navigate.dart';
import 'navigete_screen.dart';

class SplashClothing extends StatefulWidget {
  @override
  State<SplashClothing> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashClothing> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return NavigeteScreen();
          },
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121B22),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/images/CLOTHING.png"),
          ),
          Text(
            "ClothingStore",
            style: TextStyle(
              color: Colors.green,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          SpinKitCubeGrid(
          color: Colors.green,
          size: 100,
    ),
        ],
      ),
    );
  }
}