import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_bootomnavigationbar/model/Xo_Args.dart';
import 'package:test_bootomnavigationbar/screens/home_screen.dart';

class NavArguments extends StatelessWidget {
   String Player1Name = '';
   String Player2Name = '';
   static const String routeName ='NavArguments';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal.shade50,
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.teal,
            centerTitle: true, title: Text('PlayerScreens',style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Player1Name'),
                onChanged: (text) {
                  Player1Name = text;///habiba
                },
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(labelText: 'Player2Name'),
                onChanged: (text) {
                  Player2Name= text;///ahmed
                },
              ),
      
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.teal.shade50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                onPressed: () {

                  Navigator.of(context).pushNamed(
                    HomeScreen.routeName,
                    arguments: XoArgs(
                      ///هتفتح ال homeScreem وانا باعت معاها data
                      playerTwo:Player1Name,
                      playerOne: Player2Name,
                    ),
                  );
                },
                child: Text('Lets play'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
