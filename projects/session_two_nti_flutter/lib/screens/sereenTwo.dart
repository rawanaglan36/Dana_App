import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session_two_nti_flutter/screens/home_screen.dart';
import 'package:session_two_nti_flutter/screens/screenThree.dart';
import 'package:session_two_nti_flutter/widgets/category.dart';
import 'package:session_two_nti_flutter/widgets/categorySlider.dart';
import 'package:session_two_nti_flutter/widgets/category_calculator.dart';

import 'package:session_two_nti_flutter/widgets/item_twoDcreen.dart';
import 'package:session_two_nti_flutter/widgets/widget_screenTwo.dart';

class ScreenTwo extends StatefulWidget {
  static const String routeName = "ScreenTwo";

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.amber),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CategoryCalculator(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemTwodcreen(textTwo: "$x", textOne: "Weight"),
                      SizedBox(width: 10),
                      ItemTwodcreen(textTwo: "$x", textOne: "Age"),
                     ],
                  ),
                ),

                SizedBox(height: 25),
                Categoryslider(text: "Height", secondText: "170"),
                SizedBox(height: 50),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Screenthree();
                        },
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 330,
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
