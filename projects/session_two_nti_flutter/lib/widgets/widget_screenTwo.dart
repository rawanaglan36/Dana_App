import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session_two_nti_flutter/widgets/category.dart';

import 'item_twoDcreen.dart';

class WidgetScreentwo extends StatefulWidget {
  @override
  State<WidgetScreentwo> createState() => _WidgetScreentwoState();
}

class _WidgetScreentwoState extends State<WidgetScreentwo> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ItemTwodcreen(textTwo: '$x', textOne: "Weight (Kg)"),
            SizedBox(width: 10),
            ItemTwodcreen(textTwo: '$x', textOne: "Age"),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 16),
            FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              onPressed: () {
                setState(() {
                  x++;
                });
              },
              child: Icon(Icons.add, color: Color(0xFF9D6F1F)),
            ),
            SizedBox(width: 16),
            FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              onPressed: () {
                setState(() {
                  x--;
                });
              },
              child: Icon(Icons.remove, color: Color(0xFF9D6F1F)),
            ),
          ],
        ),
      ],
    );
  }
}
