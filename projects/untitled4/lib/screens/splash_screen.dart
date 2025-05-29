import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:untitled4/screens/home.dart';



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
            return HomeScreen();
          },
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.teal.shade50,
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(

            child: Image.asset("assets/images/CLOTHING.png"),
          ),
          Text(
            "Store App",
            style: TextStyle(
              color: Colors.teal,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),

          SpinKitHourGlass(
            color: Colors.teal,
            size: 100,)

        ],
      ),

    );
  }
}