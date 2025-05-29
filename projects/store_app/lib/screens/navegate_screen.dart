import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'laptop_screen.dart';
import 'mens_clothing.dart';


class NavigeteScreen extends StatefulWidget {

  @override
  State< NavigeteScreen> createState() => _LoginNavigateState();
}

class _LoginNavigateState extends State< NavigeteScreen> {
  int currentIndex=0;
  List<Widget>screens=[


    MensClothing(),
    Home(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.transparent,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store, size: 30),
            label: "Store",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.laptop, size: 30),
            label: "Laptop",
          ),


        ],
      ),
      body: screens[currentIndex],
    );
  }
}