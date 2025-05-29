import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanetCard extends StatelessWidget {
  final String image;
  final String name;

  const PlanetCard({required this.image, required this.name, super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, fit:BoxFit.fitHeight,height: 320,width: 400,),

        Text(
          name,
          style: TextStyle(
            fontSize: 37,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
