import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Row(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("News",style: TextStyle(
            color: Colors.black54,
            fontSize: 25,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 10,),
        Text("Cloud",style: TextStyle(
            color: Colors.amber,
            fontSize: 25,
            fontWeight: FontWeight.bold
        ),),

      ],
    );
  }
}
