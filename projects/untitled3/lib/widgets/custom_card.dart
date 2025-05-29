import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/model/item_model.dart';

class CustomCard extends StatelessWidget {

final Model model;
const CustomCard({required this.model});
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: model.size,
          height: 90,
          decoration: BoxDecoration(
            color:model.color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(model.textOne,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
          ),
        ),

        Container(
          width: model.size,
          height: 90,
          decoration: BoxDecoration(
            color:model.color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(model.textTwo,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
          ),
        ),
        Container(
          width: model.size,
          height: 90,
          decoration: BoxDecoration(
            color:model.color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(model.textThree,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
          ),
        ),

      ],
    );
  }
}
