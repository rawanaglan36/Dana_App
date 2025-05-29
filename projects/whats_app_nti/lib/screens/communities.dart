import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_nti/model/category_call.dart';
import 'package:whats_app_nti/widgets/item_call.dart';

import '../model/list_tile_model.dart';

class Communities extends StatelessWidget {

  List<CategoryCall> model = [
    CategoryCall(
      image: "assets/images/earth 1 (1).png",
      text: "Earth",
      subTitle: "Our home planet",
      textTrailing: Icon(Icons.call,color: Colors.green,),
    ),
    CategoryCall(
      image: "assets/images/jupiter (1).png",
      text: "Jupiter",
      subTitle: "The largest planet",
      textTrailing: Icon(Icons.call_made_rounded),
    ),    CategoryCall(
      image: "assets/images/mars (1).png",
      text: "Mars",
      subTitle: "The red planet",
      textTrailing: Icon(Icons.call_end,color: Colors.red,),
    ),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121B22),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30,),
         Row(

           children: [
             Text("Calls",style: TextStyle(color: Colors.white,
             fontSize: 28,
             fontWeight: FontWeight.bold),),
             Spacer(

             ),
        Icon(Icons.search, color: Colors.white, size: 28),
        SizedBox(width: 20,),
        Icon(Icons.more_vert, color: Colors.white, size: 28),
      ]
         ),
          SizedBox(height: 50,),
          Text("Favourites",style: TextStyle(color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.white, size: 28,),
              SizedBox(width: 20,),
              Text("Add favourite",style: TextStyle(color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),),


            ],
          ),
          SizedBox(height: 20,),
          Text("Recent ",style: TextStyle(color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold),),
          Expanded(
            child: ListView.builder(itemCount: model.length,
              itemBuilder: (context, index) {
              return ItemCall(categoryCall: model[index]);
            },),
          )



        ],
      ),
    );
  }
}
