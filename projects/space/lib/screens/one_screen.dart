import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/screens/three_screen.dart';

import 'package:space/widgets/custom_gradient.dart';

import '../widgets/custom_page_view.dart';

class OneScreen extends StatefulWidget {
  @override
  State<OneScreen> createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
  final PageController pageController = PageController();
  int currentPage = 0;

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.black54,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 260,
              child: Stack(
                children: [
                  Image.asset("assets/images/Rectangle 4 (1).png"),
                  Positioned(
                    top: 40,
                    left: 40,

                    right: 20,
                    child: Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  CustomGradient(),
                  Positioned(
                    top: 177,
                    left: 20,
                    child: Text(
                      "Which planet\nWould you like to explore?",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: planetNames.length,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return CustomPageView(
                    name: planetNames[index],
                    image: planetImages[index],
                  );
                },
              ),
            ),
            Padding(padding: const EdgeInsets.all(8.0)),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      if (currentPage > 0) {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 250),
                          curve:  Curves.easeInOut,
                        );
                      }
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                ),

                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      if (currentPage < planetNames.length - 1) {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 250),
                          curve:  Curves.easeInOut,
                        );
                      }
                    },

                    child: Icon(Icons.arrow_forward),
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
