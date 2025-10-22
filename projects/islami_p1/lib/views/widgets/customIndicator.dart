import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../App_style/app_colors.dart';

class CustomIndicator extends StatefulWidget {
  final PageController controllar;

  int index;
  CustomIndicator({required this.index, required this.controllar});
  @override
  State<CustomIndicator> createState() => _CustomIndicatorState();
}

class _CustomIndicatorState extends State<CustomIndicator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            widget.controllar.animateToPage(
              widget.index - 1,
              duration: Duration(milliseconds: 250),
              curve: Curves.linear,
            );
          },
          child: Text(
            'Back',
            style: TextStyle(
              color: AppColors.goldColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
