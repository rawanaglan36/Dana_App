import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Weatherwidgets extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,


        children: [
          Text('there is no weather start',
            style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),),

          Text('searching now',style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold
          )),


        ],
      ),
    );
  }
}
