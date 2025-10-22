import 'package:flutter/material.dart';
import 'package:islami_p1/views/screens/Home/homeScreen.dart';
import 'package:islami_p1/views/screens/onboard/DoaaScreen.dart';
import 'package:islami_p1/views/screens/onboard/RadioScreen.dart';
import 'package:islami_p1/views/screens/onboard/QuranScreen.dart';
import 'package:islami_p1/views/screens/onboard/Welcome.dart';
import 'package:islami_p1/views/screens/onboard/Kabba_Screen.dart';
import 'package:islami_p1/views/widgets/Custom_Onboard.dart';
import 'package:islami_p1/views/widgets/Custom_next.dart';
import '../../App_style/app_colors.dart';
import '../../widgets/customIndicator.dart';

class Onboard extends StatefulWidget {
  ///بناء عليه هعؤف انا ف انهي صفحه
  static const String routeName = 'Onboarding';
  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  PageController controllar = PageController();
  ///عشان اتحكم ف تالاسكرينات
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                index = value;
                setState(() {
                });
              },
              controller: controllar,
              ///اسامي الاسكرينات اللي عندي
              children: [
                Welcome(),
                KabbaScreen(),
                QuranScreen(),
                DoaaScreen(),
                RadioScreen(),
              ],
            ),
          ),
          Row(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomOnboard(Active: index == 0),
              CustomOnboard(Active: index == 1),
              CustomOnboard(Active: index == 2),
              CustomOnboard(Active: index == 3),
              CustomOnboard(Active: index == 4),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(22),
            child: Row(
              children: [
                CustomIndicator(controllar: controllar, index: index),
                Spacer(),
                CustomNext(controller: controllar, index: index),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
