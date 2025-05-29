import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BMI",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10),
            Text(
              "Calculator",
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Please choose your gender",
            style: TextStyle(
              color: Color(0xFF0A1207),
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
