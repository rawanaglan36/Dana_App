import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_nti/core/favorites/auth/views/screen/login.dart';
import 'package:project_nti/screens/cart-screen.dart';

import 'package:project_nti/screens/home_screen.dart';

import '../core/favorites/view/screens/favorite_screen.dart';

class NavScreen extends StatefulWidget {

  @override
  State<NavScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<NavScreen> {
  int currentIndex=0;
  List<Widget>screens=[
    LoginScreen(),
   HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(unselectedItemColor: Colors.pink.shade100,
          onTap: (value){
        currentIndex = value;
        setState(() {

        });
      },
          currentIndex: currentIndex,

          items:
      [
        BottomNavigationBarItem(icon: Icon(Icons.login),label: "Login"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite"),


      ]
      ),

     body: screens[currentIndex],

    );
  }
}
