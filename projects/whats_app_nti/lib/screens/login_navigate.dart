import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_nti/screens/communities.dart';
import 'package:whats_app_nti/screens/home_screen.dart';
import 'package:whats_app_nti/screens/splash_screen.dart';
import 'package:whats_app_nti/screens/update_screen.dart';

class LoginNavigate extends StatefulWidget {
  const LoginNavigate({super.key});

  @override
  State<LoginNavigate> createState() => _LoginNavigateState();
}

class _LoginNavigateState extends State<LoginNavigate> {
  int currentIndex=0;
  List<Widget>screens=[

    HomeScreen(),
    UpdateScreen(),
    Communities(),
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
            icon: Icon(Icons.chat, size: 30),
            label: "Chats",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update, size: 30),
            label: "Updates",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.call, size: 30),
            label: "Call",
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
