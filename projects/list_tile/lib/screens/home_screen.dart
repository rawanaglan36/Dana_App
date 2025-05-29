import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_tile/model/customWidget.dart';
import 'package:list_tile/screens/splash_screen.dart';
import 'package:list_tile/widgets/Rows_widets.dart';
import 'package:list_tile/widgets/category_card.dart';
import 'package:list_tile/widgets/category_item.dart';
import 'package:list_tile/widgets/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  List<CustomWidget> item = [
    CustomWidget(
      image: 'assets/images/Group 581.png',
      text: 'Dr. Pediatrician',
      description: 'Specialist Cardiologist',
      bottomText: '2.4 (2475 views)',
    ),
    CustomWidget(
      image: 'assets/images/Rectangle 506.png',
      text: 'Dr. Mistry Brick',
      description: 'Specialist Dentist ',
      bottomText: '2.8 (2893 views)',
    ),
    CustomWidget(
      image: 'assets/images/Group 581 (1).png',
      text: 'Dr. Ether Wall',
      description: 'Specialist Cancer ',
      bottomText: "2.7 (2754 views)",
    ),
    CustomWidget(
      image: 'assets/images/image (1).png',
      text: 'Dr. Johan smith',
      description: ' Specialist cardiologist',
      bottomText: "",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Popular Doctor",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.teal.shade50,
        child: Card(
          color: Colors.teal.shade50,
          elevation: 1,
          child: Column(
            children: [
              SizedBox(height: 200),
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("assets/images/Rectangle 506 (7).png"),
              ),
              ListTile(
                title: Center(
                  child: Text(
                    "Doctor Hunt",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              CustomElevatedButton(screens: SplashScreen()),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.teal.shade50,
        onPressed: (){},
      child: Icon(Icons.edit),),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return CategoryItem(customWidget: item[index]);
        },
      ),
    );
  }
}
