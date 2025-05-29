import 'package:flutter/cupertino.dart';
import 'package:session_two_nti_flutter/widgets/category.dart';
import 'package:session_two_nti_flutter/widgets/widget_screenTwo.dart';

class ItemTwodcreen extends StatelessWidget {
  final String textOne;
  final String textTwo;
 ItemTwodcreen({required this.textTwo,required this.textOne});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 175,
      height: 184,
      decoration: BoxDecoration(
          color: Color(0xFFFBF6EE
          ),
          borderRadius: BorderRadius.circular(30)

      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(textOne,style: TextStyle(
                color: Color(0xFFACACAC),
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),),
            Text(textTwo,style: TextStyle(
                color: Color(0xFFCE922A),
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),),
           SizedBox(height: 14,),
            Category()


          ],
        ),
      ),


    );
  }
}
