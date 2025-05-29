import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_tile/screens/find_doctors.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return FindDoctors();
          },
        ),
      );
    });
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/Vector (1).png")),
            Text(
              "Doctor Hunt",
              style: TextStyle(
                color: Color(0XFF222222),
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircularProgressIndicator(
              color: Colors.teal.shade50,
              strokeWidth: 5,
            ),
          ],
        ),
      ),
    );
  }
}
