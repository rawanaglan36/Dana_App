import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/item_model.dart';

class DescriptionSpace extends StatelessWidget {
  final Planet planets;
  const DescriptionSpace({required this.planets});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.teal.shade50),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(180),
                child: Card(child: Image.asset(planets.image, fit: BoxFit.fill)),
              ),
            ),
            Text(
              "NamePlanet :  ${planets.name}",
              style: TextStyle(
                color: Colors.teal,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
      
               "DescriptionPlanet :\n ${planets.description}",
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                  color: Colors.teal.shade50,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
