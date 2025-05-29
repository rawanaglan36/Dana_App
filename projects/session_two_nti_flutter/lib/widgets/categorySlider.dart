import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categoryslider extends StatefulWidget {
  final String text;
  final String secondText;
  const Categoryslider({required this.text, required this.secondText});

  @override
  State<Categoryslider> createState() => _CategorysliderState();
}

class _CategorysliderState extends State<Categoryslider> {
  double value =40.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 205,
      decoration: BoxDecoration(
        color: Color(0xFFFBF6EE),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.text,
            style: TextStyle(
              color: Color(0xFFACACAC),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            widget.secondText,
            style: TextStyle(
              color: Color(0xFFCE922A),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Slider(value: value,
              max: 100,
              min: 0,
              activeColor: Colors.amber,
              inactiveColor: Colors.grey,

              onChanged: (double newValue) {
            value = newValue;
            setState(() {

            });
              }),
        ],
      ),
    );
  }
}
