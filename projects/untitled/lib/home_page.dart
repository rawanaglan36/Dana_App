import 'package:flutter/material.dart';
import 'package:untitled/constant/app_route.dart';
import 'package:untitled/widget/item_page.dart';
import 'package:untitled/widgets/second_screen.dart';

class HomePage extends StatelessWidget {
  static const String routeName='homeScreen';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.deepPurple,
        title: Text('Bebo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context,HomePage.routeName);
          },
          child: Text("co to SecondScreen"),
        ),
      ),
    );
  }
}
