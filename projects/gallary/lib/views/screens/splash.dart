import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gallary/views/screens/homeScreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomeScreen();
      },));
    },);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/planet.png',height: 810,
          fit: BoxFit.fitHeight,),
          SpinKitChasingDots(
            color: Colors.white,
            size: 100,
          )
        ],
      ),
    );
  }
}
