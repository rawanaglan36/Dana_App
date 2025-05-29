import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/constant/routes.dart';
import 'dart:ui';


import '../data.dart';


class ItemInfo extends StatefulWidget {

  @override
  State<ItemInfo> createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView.builder(
       itemCount:MealsCategories.length,
       itemBuilder: (context, index) =>   Padding(
         padding: const EdgeInsets.all(8.0),
         child: ClipRRect(
           borderRadius: BorderRadius.circular(20),
           child: GestureDetector(
             onTap: () {
               Navigator.of(context).pushNamed(
                 AppRoute.Meals,
                 arguments: {
                   'id': MealsCategories[index].id,
                   'name': MealsCategories[index].name,
                 },
               );
             },
             child: Container(
               alignment: Alignment.bottomCenter,
               width: double.infinity,
               height: 200,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   fit: BoxFit.fill,
                   image: AssetImage(MealsCategories[index].image),
                 ),
               ),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                 child: Container(
                   width: double.infinity,
                   height: 50,
                   decoration: BoxDecoration(
                     color: Colors.black54,
                   ),
                   child: Center(
                     child: Text(
                       MealsCategories[index].name,
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                 ),
               ),
             ),
           ),
         ),
       ),
     ),
    );
  }
}
