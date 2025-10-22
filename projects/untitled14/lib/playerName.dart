import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled14/home_screen.dart';
import 'package:untitled14/model/model.dart';

class Playername extends StatelessWidget {
 static const String routeName='PlayerOne';
String textOne='';
 String textTwo='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Padding(
         padding: const EdgeInsets.all(16),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             TextFormField(
               onChanged: (value){
                 textOne=value;
               },
               decoration: InputDecoration(
                 labelText: 'الحمد لله',
               ),
             ),
             TextFormField(
               onChanged: (value){
                 textTwo=value;
               },
               decoration: InputDecoration(
                 labelText: 'الحمد لله',
               ),
             ),
             ElevatedButton(onPressed: (){
               Navigator.of(context).pushNamed(HomeScreen.routeName,arguments:
               Player(playerOneArgs: textOne, playerTwoArgs: textTwo),
               );
             },
                 child: Text('GO TO HOME'))
           ],
         ),
       ),
     ),
    );
  }
}
