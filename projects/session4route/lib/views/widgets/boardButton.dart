import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Boardbutton extends StatelessWidget {
final String text;
Function buttonClick;
int index;
 Boardbutton({required this.text,
   required this.buttonClick,
 required this.index});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GridView.builder(
        itemCount: 9,
        padding: EdgeInsets.symmetric(horizontal: 13),
        itemBuilder: (context, index) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              buttonClick(index);
            },
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,


        ),
      ),
    );
  }
}
