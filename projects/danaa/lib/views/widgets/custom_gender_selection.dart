import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../App_style/app_colors.dart';

class CustomGenderSelection extends StatelessWidget {
  const CustomGenderSelection({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(height: height * 0.01),
        Text('نوع الطفل'),
        SizedBox(height: height * 0.01),
        Container(

          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(13)
          ),
          child: DefaultTabController(
            key: UniqueKey(),
            length: 2,
            child: TabBar(
              labelStyle: TextStyle(
                color: AppColors.greenColor,
                fontSize: 16
              ),
              dividerHeight: 0,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelStyle:TextStyle(color: AppColors.blackColor) ,
              indicator: BoxDecoration(
                color:Colors.teal.shade100,
                borderRadius: BorderRadius.circular(16),


              ),

              tabs: [
             Tab(text: 'ولد'),
              Tab(text: 'بنت'),
            ],
            ),
          ),
        ),
      ],
    );
  }
}
