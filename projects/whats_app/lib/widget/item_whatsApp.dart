import 'package:flutter/cupertino.dart';

class ItemWhatsapp extends StatelessWidget {
  final Color color;
  final String text;
  ItemWhatsapp({required this.text,required this.color});
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 80,
      height: 60,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,

        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
