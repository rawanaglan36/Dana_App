import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowsWidets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Icon(Icons.star, color: Colors.amber),
        Icon(Icons.star, color: Colors.amber),
        Icon(Icons.star, color: Colors.amber),
        Icon(Icons.star, color: Colors.amber),
        Icon(Icons.star, color: Colors.grey),
      ],

    );
  }
}
