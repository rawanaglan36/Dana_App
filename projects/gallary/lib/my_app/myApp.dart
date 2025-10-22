import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallary/views/screens/homeScreen.dart';

class GallaryApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}