import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_tile/screens/home_screen.dart';
import 'package:list_tile/screens/splash_screen.dart';

class CustomElevatedButton extends StatefulWidget {
 final Widget screens;
 const CustomElevatedButton({required this.screens});

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF0EBE7F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SplashScreen();
        },
        ));
        setState(() {

        });

      },
      child: Text(
        "Book Now",
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
