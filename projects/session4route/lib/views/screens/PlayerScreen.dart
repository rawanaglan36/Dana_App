import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session4route/model/xoModel.dart';
import 'package:session4route/views/screens/homeScreen.dart';

class Playerscreen extends StatelessWidget {
  static const String routeName='playerScreen';
  String playerOneName='';
  String playerTwoName='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('PlayerScreen',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
      ),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30,),
          TextField(
            onChanged: (value) {
              playerTwoName=value;
            },
            decoration: InputDecoration(
              labelText: 'Player1Name',

            ),
          ),
          SizedBox(height: 30,),
          TextField(
            onChanged: (value) {
              playerOneName=value;
            },
            decoration: InputDecoration(
              labelText: 'Player2Name',

            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
            onPressed: (){
              Navigator.of(context).pushNamed(Homescreen.routeName,
              arguments:XoModelArgs(
                  playerXName: playerOneName,
                  playerOName: playerTwoName)
              );
            },
              child: Text("GO TO HOMESCREEN"),
          )
        ],
       ),
     ),
    );
  }
}
