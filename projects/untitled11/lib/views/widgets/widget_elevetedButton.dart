import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetElevetedbutton extends StatelessWidget {
  final String text;
  Function onButtonClick;
  WidgetElevetedbutton({required this.text, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(2),
        child: ElevatedButton(
          onPressed: () {
            onButtonClick(text);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
