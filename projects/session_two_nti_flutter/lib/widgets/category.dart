import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        SizedBox(width: 16),
        FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          onPressed: () {
            setState(() {
              x++;
            });
          },
          child: Icon(Icons.add, color: Color(0xFF9D6F1F)),
        ),
        SizedBox(width: 16),
        FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          onPressed: () {
            setState(() {
              x--;
            });
          },
          child: Icon(Icons.minimize, color: Color(0xFF9D6F1F)),

        ),
      ],
    );
  }
}
