import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session_two_nti_flutter/widgets/category_calculator.dart';
import 'package:session_two_nti_flutter/widgets/health_widget.dart';
import 'package:session_two_nti_flutter/widgets/row_slider.dart';

import 'home_screen.dart';

class Screenthree extends StatefulWidget {
  static const String routeName = "ScreenThree";

  @override
  State<Screenthree> createState() => _ScreenthreeState();
}

class _ScreenthreeState extends State<Screenthree> {
  double value = 50.8;
  final String text="0.0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.amber,),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) {
              return HomeScreen();
            },));
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
             CategoryCalculator(),
              Card(
                elevation: 10,
                child: Container(
                  width: double.infinity,
                  height: 450,
                  decoration: BoxDecoration(color: Color(0xFFF0F8EC),borderRadius: 
                  BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      SizedBox(height: 17),
                      Text(
                        "Your BMI:",
                        style: TextStyle(
                          color: Color(0xFF0A1207),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        text,
                        style: TextStyle(
                          color: Color(0xFF519234),
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Slider(
                        value: value,
                        min: 0,
                        max: 100,
                        activeColor: Colors.green,
                        inactiveColor: Colors.amber,
                        onChanged: (double newValue) {
                          setState(() {
                            value = newValue;
                          });
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RowSlider(text1: "65 Kg", text2: "Weight"),
                          RowSlider(text1: "170 cm", text2: "Height"),
                          RowSlider(text1: "26", text2: "Age"),
                          RowSlider(text1: "male", text2: "Gender"),
                        ],
                      ),
                      SizedBox(height: 8),
                      HealthWidget(),
                      SizedBox(height: 30,),
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


                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 260,
                          child: Text(
                            "Close",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
