import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/screens/one_screen.dart';

class ZeroScreen extends StatelessWidget {
  const ZeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Image.asset(
                "assets/images/48e3ac1944450fcae09e68a9ccd37c17 1 (1).png",
                height: 830,
              ),
              // fit: BoxFit.fitHeight,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Explore \nThe\nUniverse",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
