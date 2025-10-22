import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatelessWidget {
  static const String routeName = 'PersonalInfoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          Text(
            textAlign: TextAlign.end,
            'ضيف أولادك وابدأ رحلتك معاهم',
            style: TextStyle(
              color: Color(0xFF0F1C1D),
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            textAlign: TextAlign.end,
            '.ابدأ دلوقتي وخلي كل حاجة تخص ولادك قريبة منك دايمًا',
            style: TextStyle(
              color: Color(0xFF445A5D),
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
