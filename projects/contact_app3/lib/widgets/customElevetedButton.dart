import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/app_colors.dart';

class Customelevetedbutton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(9),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all(AppColors.Gold),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
                horizontal: 40, vertical: 16),
          ),
          elevation: MaterialStateProperty.all(8),
        ),
        onPressed: () {
        },
        child: Text(
          "Enter User",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
