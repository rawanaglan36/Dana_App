import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/textFormFieldWidgets.dart';

class Searchinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),

        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          'Search a city',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Textformfieldwidgets()
      ),
    );
  }
}
