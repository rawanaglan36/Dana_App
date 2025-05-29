import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryHome extends StatelessWidget {
  @override
  final String image;
  final String text;
  const CategoryHome({required this.text,required this.image});
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image.asset(image,fit: BoxFit.cover,),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
            color: Colors.purple.shade200,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
