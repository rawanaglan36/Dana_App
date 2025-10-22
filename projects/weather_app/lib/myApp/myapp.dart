import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/views/screens/homeScreen.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}