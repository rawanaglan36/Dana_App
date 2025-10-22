import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/widget_elevetedButton.dart';

class HomeScreen extends StatefulWidget {
 static const String routeName = 'HomeScreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String res = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.9,
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                res,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                WidgetElevetedbutton(text: '7', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '8', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '9', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '*', onButtonClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                WidgetElevetedbutton(text: '4', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '5', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '6', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '/', onButtonClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                WidgetElevetedbutton(text: '1', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '2', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '3', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '+', onButtonClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                WidgetElevetedbutton(text: '0', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '.', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '=', onButtonClick: buttonDig),
                WidgetElevetedbutton(text: '-', onButtonClick: onOperatorClick),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void buttonDig(String text) {
    print(text);
    res += text;
    setState(() {});

    ///concatenate
    ///عاوزة لمل اضغط ع الزار يتعرض عند ال result
  }

  String lhs = '';
  String oper = '';

  void onOperatorClick(String operatorClicked) {
    if(oper.isEmpty) {
      lhs = res;
      oper = operatorClicked;
      res = '';
    }else{
String rhs=res;

    }
    setState(() {});
  }

}
