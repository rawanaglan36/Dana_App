import 'package:flutter/cupertino.dart';
import 'package:islami_p1/views/App_style/app_colors.dart';

class SuraContent extends StatelessWidget {
  final String content;
  final int index;
  final int selectedIndex=0;
  const SuraContent({required this.content,
  required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.goldColor,
          width: 3

        )
      ),
      child: Text('$content[$index+1]',
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      style: TextStyle(
        color:selectedIndex==index?
        AppColors.goldColor:
        AppColors.darkColor,
        fontSize: 20,
        fontWeight: FontWeight.bold

      ),),
    );
  }
}
