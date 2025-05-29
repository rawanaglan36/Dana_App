import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/widget/item_info.dart';
class HomePage extends StatelessWidget {
  static const String routeName = 'Home Page';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
             appBar: AppBar(

              toolbarHeight: 80,
            backgroundColor: Colors.teal[900],
          title: Text('BERAMAR',
            style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
          )),
          centerTitle: true,
        ),
        body:ItemInfo(),
             ),
    );
  }
}
