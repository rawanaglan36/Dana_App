import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Homescreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF29384D),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/Group 5.png',width: 100,),
                Lottie.network('https://lottie.host/xxxxx.json'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
