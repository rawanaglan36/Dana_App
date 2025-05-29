import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_tile/screens/find_doctors.dart';
import 'package:list_tile/screens/home_screen.dart';
import 'package:list_tile/screens/splash_screen.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int currentIndex = 0;
  List<Widget> nameScreens = [SplashScreen(),
    HomeScreen(),
    FindDoctors()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (va) {
          currentIndex = va;
          setState(() {});
        },

        unselectedItemColor: Colors.purple,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "SplashScreen"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "homeScreen"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
        ],
      ),
      body: nameScreens[currentIndex],
    );
  }
}
