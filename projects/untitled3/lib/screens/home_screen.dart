import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/model/item_model.dart';
import 'package:untitled3/widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
List<Model>mode=[
  Model(textOne: "A",textTwo:  "B",textThree:"C" , color: Colors.teal, size: 90),
  Model(textOne: "D",textTwo:  "E",textThree:"F" , color: Colors.pinkAccent, size: 90),
  Model(textOne: "G",textTwo:  "H",textThree:"I" , color: Colors.brown, size: 90),
  Model(textOne: "J",textTwo:  "K",textThree:"L" , color: Colors.blueGrey, size: 90),
  Model(textOne: "M",textTwo:  "N",textThree:"O" , color: Colors.purple, size: 90),
  Model(textOne: "P",textTwo:  "Q",textThree:"R" , color: Colors.blue, size: 90),
  Model(textOne: "S",textTwo:  "T",textThree:"U" , color: Colors.amber, size: 90),
  Model(textOne: "V",textTwo:  "W",textThree:"X" , color: Colors.redAccent, size: 90),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        toolbarHeight: 80,
        title:Text("CustomCard ",style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(itemCount: mode.length,
          itemBuilder: (context, index) {
          return CustomCard(model: mode[index]);

        },),
      ),
    );
  }
}
