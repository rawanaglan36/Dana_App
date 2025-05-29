import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/screens/description_space.dart';
import 'package:space/screens/one_screen.dart';
import 'package:space/widgets/custom_gradient.dart';
import 'package:space/widgets/custom_page_view.dart';

import '../Model/item_model.dart';

class ThreeScreen extends StatefulWidget {
  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  final List<String> planetNames = [
    "Earth",
    "Jupiter",
    "Mars",
    "Venus",
    "Saturn",
    "Mercury",
    "Uranus",
    "Neptune",
    "Pluto",
  ];
  final List<String> planetImages = [
    "assets/images/earth 1 (1).png",
    "assets/images/jupiter (2).png",
    "assets/images/mars (1).png",
    "assets/images/venus (1).png",
    "assets/images/saturn (1).png",
    "assets/images/mercury (2).png",
    "assets/images/uranus (1).png",
    "assets/images/neptune (2).png",
    "assets/images/sun (1).png",
  ];
  int index = 0;
  int currentIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
      
          children: [
            Stack(
      
              children: [
                Image.asset("assets/images/Rectangle 4 (1).png"),
                Positioned(
                 left: 20,
                  top: 40,
      
                  right: 20,
                  child: TextButton(
                    onPressed: (){
                       Navigator.push(context, MaterialPageRoute(
                           builder: (context) {
                             return OneScreen();
                           },));
                    },
                    child: Text(
                      planetNames[currentIndex],
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: planetImages.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      
                         ClipRRect(
                          borderRadius: BorderRadius.circular(180),
                          child: Card(
                            child: Image.asset(
                              planetImages[index],
                              height: 300,
                              width: 300,
                              fit: BoxFit.fill,
                            ),
                          ),
                       
                      ),
                      SizedBox(height: 40),
      
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DescriptionSpace(planets: planets[index]);
                              },
                            ),
                          );
                        },
                        child: Text(
                          planetNames[index],
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
