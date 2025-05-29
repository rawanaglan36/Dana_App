import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/constant/routes.dart';
import 'package:meal_app/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoute.Home);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Image.asset('assets/images/br.jpg', fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }
}
