import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session_two_nti_flutter/screens/sereenTwo.dart';
import 'package:session_two_nti_flutter/widgets/categoryItem.dart';
import 'package:session_two_nti_flutter/widgets/category_calculator.dart';

class HomeScreen extends StatefulWidget {
static const String routeName = "HomeScreen";
  @override
  State<HomeScreen> createState() => _HomeScreenState(color:Colors.grey ,border:40 ,x:"Button" );
}

class _HomeScreenState extends State<HomeScreen> {
  String x ;

  Color color;
  double border;
  _HomeScreenState({required this.x,required this.color,required this.border});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
        
            children: [
            CategoryCalculator(),
              SizedBox(height: 20,),
             Categoryitem(color:  Color(0xFFF0F8EC), text: 'Male', image: "assets/images/Group (1).png",colorText:Color(0xFF519234) ,),
              SizedBox(height: 20,),
              Categoryitem(color:  Color(0xFFFBF6EE), text: 'Female', image: "assets/images/Group (2).png",colorText:Color(0xFFCE922A) ,),
              Spacer(flex: 4,),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white, // ة
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));

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
              )

            ],
          ),
        ),
      ),


    );
  }
}
