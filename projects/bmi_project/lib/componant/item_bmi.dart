
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBmi extends StatefulWidget {
bool isSelected=true;
final String text1;
var icon1;
Slider ?slider;
String? text2;
ItemBmi({required this.text1,required this.icon1,this.slider,this.text2});

  @override
  State<ItemBmi> createState() => _ItemBmiState();
}

class _ItemBmiState extends State<ItemBmi> {
bool isSelected=false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
        setState(() {
          isSelected=!isSelected;


        });
      },
        child: Container(
          margin: EdgeInsets.all(9),
          padding: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
             color: isSelected?Colors.pink:Colors.yellowAccent,
            borderRadius: BorderRadius.circular(10),
          ),
                child: Column(
            children: [
              Icon(widget.icon1,
                  size: 100, color: Colors.deepPurple),
              Text(
                widget.text1,
                style: TextStyle(

                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
