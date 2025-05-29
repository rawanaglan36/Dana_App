import 'package:flutter/cupertino.dart';

class Categoryitem extends StatelessWidget {

final String text;
final String image;
final Color color;
final Color colorText;
const Categoryitem({required this.color,required this.text,required this.image,required this.colorText});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
      decoration: BoxDecoration(
        color: color,
          // color: Color(0xFFF0F8EC),
          borderRadius: BorderRadius.circular(30)

      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Text(text,style: TextStyle(
              color: colorText,
              //Color(0xFF519234),
              fontSize: 35,
              fontWeight: FontWeight.w400,
            ),),
            Spacer(),
            Image.asset(image,width: 100,height: 100,),
          ],
        ),
      ),
    ) ;
  }
}
