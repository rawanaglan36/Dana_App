import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextform extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(color: Colors.white),
        ),
        prefixIcon: Icon(Icons.search),
        hintText: "Dentist",
        suffixIcon: Icon(Icons.close),
      ),
    );
  }
}
