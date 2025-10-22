import 'package:bmi_project/componant/item_bmi.dart';
import 'package:bmi_project/screens/bmi_calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() =>
      _HomePageState(valueNumberAge: 0, valueNumberWeight: 0);
}

class _HomePageState extends State<HomePage> {
  double value = 100;

  int currentIndex = 0;
  int valueNumberAge;
  int valueNumberWeight;
  _HomePageState({
    required this.valueNumberWeight,
    required this.valueNumberAge,
  });
  List<String> names = ['home', 'setting', 'search'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                ItemBmi(text1: 'Male', icon1: Icons.male),

                ItemBmi(text1: 'Female', icon1: Icons.female),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${value.round()} cm.',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Slider(
                      value: value,
                      min: 100,
                      max: 200,

                      onChanged: (double x) {
                        setState(() {
                          value = x;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'weight',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          '$valueNumberWeight',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Row(
                                  children: [
                                    FloatingActionButton(
                                      shape: StarBorder(side: BorderSide.none),
                                      heroTag: 'valueNumber+',
                                      onPressed: () {
                                        setState(() {
                                          valueNumberWeight++;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 16,
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    FloatingActionButton(

                                      shape: StarBorder(side: BorderSide.none),
                                      heroTag: 'valueNumber-',
                                      onPressed: () {
                                        setState(() {
                                          valueNumberWeight--;
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        size: 16,
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(20),

                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          '$valueNumberAge',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Row(
                                  children: [
                                    FloatingActionButton(
                                      shape: StarBorder(side: BorderSide.none),
                                      heroTag: 'valueNumberAge+',
                                      onPressed: () {
                                        setState(() {
                                          valueNumberAge++;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 16,
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    FloatingActionButton(
                                      shape: StarBorder(side: BorderSide.none),
                                      heroTag: 'valueNumberAge-',
                                      onPressed: () {
                                        setState(() {
                                          valueNumberAge--;
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        size: 16,
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Container(
              height: 110,
              width: double.infinity,

              color: Colors.pink,
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BmiCalculator();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Calculator",
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
      ),
    );
  }
}
