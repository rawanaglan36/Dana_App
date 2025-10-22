import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/views/screens/searchInfo.dart';
import 'package:weather_app/views/widgets/weatherInfo.dart';
import 'package:weather_app/views/widgets/weatherWidgets.dart';

import '../../myApp/myapp.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.blue,
        title: Text(
          "Weather App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Searchinfo();
                },));
          },
              icon: Icon(Icons.search_off,size: 30,
                  color: Colors.white))
        ],
      ),
      body:Weatherwidgets()

    );
  }
}
