import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constant/app_route.dart';


class SecondScreen extends StatelessWidget {

static const String routeName='secondScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('HAB2'),
  toolbarHeight: 300,
  backgroundColor: Colors.pink,
    ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context,SecondScreen.routeName );



          },
          child: Text("co to ThreeScreen"),
        ),
      ),
    );
  }
}
