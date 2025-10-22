import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_p1/views/App_style/app_assets.dart';

class HadthTap extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
            children:[
                Image.asset(AppAssets.firstScreen,
                    fit: BoxFit.cover),
              SizedBox(height: 20,),
              
             ]
            )




        );

  }
}
