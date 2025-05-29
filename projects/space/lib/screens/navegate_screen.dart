import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/screens/one_screen.dart';
import 'package:space/screens/three_screen.dart';
import 'package:space/screens/zero_screen.dart';


class NavegateScreen extends StatefulWidget {

  @override
  State<NavegateScreen> createState() => _NavegateScreenState();
}

class _NavegateScreenState extends State<NavegateScreen> {
  int currentIndex=0;
List<Widget>screens=[
  ZeroScreen(),
  OneScreen(),
  ThreeScreen(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.transparent,
        onTap: (value) {

          setState(() {
            currentIndex=value;
          });
        },
        selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.public,),label: "zeroScreen"),
            BottomNavigationBarItem(icon: Icon(Icons.travel_explore),label: "OneScreen"),
            BottomNavigationBarItem(icon: Icon(Icons.rocket_launch),label: "ThreeScreen"),


          ]),
      body: screens[currentIndex],
    );
  }
}
