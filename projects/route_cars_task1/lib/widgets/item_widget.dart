import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String name;
  const ItemWidget ({required this.name});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 24),
        margin: EdgeInsets.all(3),
        height: 66,
        color: Colors.purple,
        child: Center(
          child: Text(name,
            style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold
            ),),
        ),
      ),
    );
  }
}
