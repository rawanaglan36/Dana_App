import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomElevetedbutton extends StatelessWidget {
  @override
  int index;
  Function onButtonClick;
  final String text;
   CustomElevetedbutton({required this.text,
  required this.onButtonClick,
   required this.index});
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          onButtonClick(index);
        },
        child: Text(text,style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
