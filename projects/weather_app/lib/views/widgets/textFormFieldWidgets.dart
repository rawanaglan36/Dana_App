import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textformfieldwidgets extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: TextFormField(
          
          onChanged: (value){

          },
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 16
            ),
            hintText: "Enter City Name",
            labelText: "Search",
            hintStyle: TextStyle(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(

            ),
          ),
        ),
      ),
    );
  }
}
