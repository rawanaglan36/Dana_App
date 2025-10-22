import 'package:danaa/App_style/app_colors.dart';
import 'package:flutter/cupertino.dart';

class CustomIndicator extends StatelessWidget {
final bool active;
CustomIndicator({required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: active?70:70,
      height: 10,
      duration:Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: active?AppColors.orangeColor:AppColors.lightGreyColor,

      ),
    );
  }
}
