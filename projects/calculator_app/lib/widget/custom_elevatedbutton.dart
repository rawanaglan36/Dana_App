import 'package:calculator_app/model/item_calculater.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomElevatedbutton extends StatelessWidget {
final String text;
final Function onButtonClick;

 CustomElevatedbutton({required this.text,
  required this.onButtonClick,
});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: ElevatedButton(
            onPressed: () => onButtonClick(text),

            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[3],
                foregroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                minimumSize: const Size(70, 70),
                ),
            child:  Text(text,
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold,

          ),
        )),
      ),
    );
  }
}

