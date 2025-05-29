import 'package:bmi_project/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(

        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'BMI Calculator ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:  Column(

        children: [
          Center(
            child: Text('Your Result',style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 25,),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(2),
              padding:EdgeInsets.all(30) ,

              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('NORMAL',style: TextStyle(
                      color: Colors.pink,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 25,),
                  Text('22.3',style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 70,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 25,),
                  Text('YOU have a normal body weight.\n Good job!',style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),


                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 100,
            margin: EdgeInsets.all(2),
            padding:EdgeInsets.all(30) ,

            color: Colors.pink,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();

                      },
                    ),

                  );
                },

                child: Text(
                  " Re-Calculator",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
