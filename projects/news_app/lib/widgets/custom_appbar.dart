import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
SizedBox(height: 128,),
        Text(
          "News",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(
          "Cloud",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
