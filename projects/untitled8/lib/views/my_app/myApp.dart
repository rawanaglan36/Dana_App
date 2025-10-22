
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/views/screens/homeScreen.dart';

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}