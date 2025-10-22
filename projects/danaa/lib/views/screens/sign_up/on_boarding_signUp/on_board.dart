import 'package:danaa/views/screens/sign_up/Child_InfoScreen.dart';
import 'package:danaa/views/screens/sign_up/Contact_InfoScreen.dart';
import 'package:danaa/views/screens/sign_up/Create_Password_Screen.dart';
import 'package:danaa/views/screens/sign_up/Personal_Information.dart';
import 'package:danaa/views/screens/sign_up/on_boarding_signUp/custom_indicator.dart';

import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  static const String routeName = 'OnBoard';

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  PageController controller = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIndicator(active: index == 0),
              SizedBox(width: 5),
              CustomIndicator(active: index == 1),
              SizedBox(width: 5),
              CustomIndicator(active: index == 2),
              SizedBox(width: 5),
              CustomIndicator(active: index == 3),
            ],
          ),
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (value) {
                index = value;
                setState(() {});
              },
              children: [
                PersonalInformation(),
                ChildInfoScreen(),
                ContactInfoscreen(),
                CreatePasswordScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
