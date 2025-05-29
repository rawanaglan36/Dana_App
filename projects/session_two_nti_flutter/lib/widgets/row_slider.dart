import 'package:flutter/cupertino.dart';

class RowSlider extends StatelessWidget {
 final String text1;
 final String text2;
 RowSlider({required  this.text1,required this.text2});
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(text1,
          style: TextStyle(
              color: Color(0xFF519234),
              fontSize: 20,
              fontWeight: FontWeight.w600
          ),),
        Text(text2,
          style: TextStyle(
              color: Color(0xFFACACAC),
              fontSize: 14,
              fontWeight: FontWeight.w600
          ),),
      ],
    );
  }
}
