import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: [
         Container(
           width: 60,
        height: 40,
             decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/image 17 (5).png",),fit: BoxFit.fill,),
             ),

           ),
          ],
        ),
      
    );
  }
}
