import 'package:flutter/cupertino.dart';

import '../../App_style/app_styles.dart';

class CustomLabel extends StatelessWidget {
  final String textOne;
  final String textTwo;
  CustomLabel({required this.textOne, required this.textTwo});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(height: height * 0.039),
        Text(textOne, style: AppStyle.boald16),
        SizedBox(height: height * 0.01),
        Text(
          textTwo,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.end,
        ),
        SizedBox(height: height * 0.04),
      ],
    );
  }
}
