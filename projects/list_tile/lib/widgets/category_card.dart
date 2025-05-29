import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Dr. Pediatrician",style:
        TextStyle(
          color: Colors.red,

            fontSize: 18,
            fontWeight: FontWeight.bold
        ),)

      ],
    );
  }
}
