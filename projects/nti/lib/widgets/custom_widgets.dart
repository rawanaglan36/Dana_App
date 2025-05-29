import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti/model/Item_model.dart';


class CustomWidget extends StatelessWidget {

  final ItemModel itemModel;
  const CustomWidget ({required this.itemModel});
  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [



          Card(color: Colors.teal.shade50,
              child: Image.network(itemModel.image)),
          Column(

            children: [

              Text(itemModel.title),
              Text(itemModel.description,style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),)



            ],
          ),
        ],

      );
  }
}