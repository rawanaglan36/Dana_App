// import 'package:calculator_app/model/item_calculater.dart';
// import 'package:calculator_app/widget/custom_elevatedbutton.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CalculatorScreen extends StatefulWidget {
//
//
//   @override
//   State<CalculatorScreen> createState() => _CalculatorScreenState();
//
// }
//
// class _CalculatorScreenState extends State<CalculatorScreen> {
//   String resText = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         toolbarHeight: 90,
//         elevation: 20,
//         centerTitle: true,
//         backgroundColor: Colors.blueAccent,
//         title: Text(
//           "Calculator", style: TextStyle(
//           color: Colors.white,
//           fontSize: 28,
//           fontWeight: FontWeight.bold,
//
//
//         ),),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//
//         children: [
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.only(left: 13),
//               alignment: Alignment.centerLeft,
//               child: Text(resText, style: TextStyle(
//                   color: Colors.blueAccent,
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold
//               ),),
//             ),
//           ),
//           Expanded(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//
//               children: [
//
//                 CustomElevatedbutton(
//
//                   text: "7",
//                   onButtonClick: onDigit,),
//                 CustomElevatedbutton(text: "8", onButtonClick: onDigit,),
//                 CustomElevatedbutton(text: "9", onButtonClick: onDigit,),
//                 CustomElevatedbutton(text: "*", onButtonClick: operatorClick,),
//
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//
//               children: [
//                 CustomElevatedbutton(text: "4", onButtonClick: onDigit,),
//                 CustomElevatedbutton(text: "5", onButtonClick: onDigit,),
//                 CustomElevatedbutton(text: "6", onButtonClick: onDigit,),
//                 CustomElevatedbutton(text: "/", onButtonClick: operatorClick,),
//
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//
//               children: [
//                 CustomElevatedbutton(text: "1", onButtonClick: onDigit,),
//                 CustomElevatedbutton(text: "2", onButtonClick: onDigit,),
//                 CustomElevatedbutton(text: "3", onButtonClick: onDigit,),
//                 CustomElevatedbutton(text: "+", onButtonClick: operatorClick,),
//
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//
//               children: [
//                 CustomElevatedbutton(text: ".", onButtonClick: operatorClick,),
//                 CustomElevatedbutton(text: "0", onButtonClick: onDigit,),
//                 CustomElevatedbutton(text: "=", onButtonClick: operatorClick,),
//                 CustomElevatedbutton(text: "-", onButtonClick: operatorClick,),
//
//               ],
//             ),
//           ),
//
//         ],
//       ),
//
//     );
//   }
//
//   void onDigit(String text) {
//     setState(() {
//       resText += text;
//     });
//   }
//
//   String lhs="";
//   String operator="";
//   void operatorClick(String operatorClicked){
//     if(operator.isEmpty) {
//       lhs = resText;
//       operator = operatorClicked;
//       resText = "";
//     }else {
//       String rhs = resText;
//       lhs = calculate(lhs, operator, rhs){
//         operator = operatorClicked;
//         resText = "";
//       }
//       setState(() {
//
//       });
//     }
//     String calculate=(String lhs, String operator,String rhs){
//        double num1=double.parse(lhs);
//        double num2 = double.parse(rhs);
//        double res=0.0;
//        if(operator == "+"){
//          res =num1+num2;
//        }else if(operator == "-"){
//          res =num1-num2;
//
//        }else if(operator == "*"){
//          res =num1*num2;
//
//       }else if(operator == "/"){
//          res =num1/num2;
//          return res.toString();
//     }
//        return res.toString();
//
//   }
// }
import 'package:calculator_app/widget/custom_elevatedbutton.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String resText = "";

  String lhs = "";
  String op = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 20,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 13),
              alignment: Alignment.centerLeft,
              child: Text(
                resText,
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomElevatedbutton(text: "7", onButtonClick: onDigit),
                CustomElevatedbutton(text: "8", onButtonClick: onDigit),
                CustomElevatedbutton(text: "9", onButtonClick: onDigit),
                CustomElevatedbutton(text: "*", onButtonClick: operatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomElevatedbutton(text: "4", onButtonClick: onDigit),
                CustomElevatedbutton(text: "5", onButtonClick: onDigit),
                CustomElevatedbutton(text: "6", onButtonClick: onDigit),
                CustomElevatedbutton(text: "/", onButtonClick: operatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomElevatedbutton(text: "1", onButtonClick: onDigit),
                CustomElevatedbutton(text: "2", onButtonClick: onDigit),
                CustomElevatedbutton(text: "3", onButtonClick: onDigit),
                CustomElevatedbutton(text: "+", onButtonClick: operatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomElevatedbutton(text: ".", onButtonClick: onDigit),
                CustomElevatedbutton(text: "0", onButtonClick: onDigit),
                CustomElevatedbutton(text: "=", onButtonClick: operatorClick),
                CustomElevatedbutton(text: "-", onButtonClick: operatorClick),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onDigit(String text) {
    setState(() {
      resText += text;
    });
  }

  void operatorClick(String operatorClicked) {
    setState(() {
      if (op.isEmpty && operatorClicked != "=") {
        // أول مرة أضغط operator
        lhs = resText;
        op = operatorClicked;
        resText = "";
      } else if (operatorClicked == "=") {
        // أحسب الناتج
        String rhs = resText;
        String result = calculate(lhs, op, rhs);
        resText = result;
        lhs = "";
        op = "";
      } else {
        // لو ضغطت operator جديد بعد ما فيه عملية شغالة
        String rhs = resText;
        String result = calculate(lhs, op, rhs);
        lhs = result;
        op = operatorClicked;
        resText = "";
      }
    });
  }

  String calculate(String lhs, String operator, String rhs) {
    double num1 = double.parse(lhs);
    double num2 = double.parse(rhs);
    double res = 0.0;

    if (operator == "+") {
      res = num1 + num2;
    } else if (operator == "-") {
      res = num1 - num2;
    } else if (operator == "*") {
      res = num1 * num2;
    } else if (operator == "/") {
      res = num1 / num2;
    }
    return res.toString();
  }

}
