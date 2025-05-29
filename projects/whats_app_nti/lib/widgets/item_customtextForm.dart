import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCustomtextform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),

        prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
        hintText: "Ask Meta Ai or Search",
        hintStyle: TextStyle(color: Colors.grey[600]),
      ),
    );
  }
}
