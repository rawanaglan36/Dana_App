import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data_class/prodecut_model.dart';

class CustomWidget extends StatelessWidget {

final ProdecutModel prodecutModel;
const CustomWidget ({required this.prodecutModel});
  @override
  Widget build(BuildContext context) {
    return
     Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [


         
          Card(color: Colors.teal.shade50,
              child: Image.network(prodecutModel.image)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal.shade50,
                foregroundColor: Colors.teal
              ),
                  onPressed: (){},
                  child: Text(prodecutModel.name)),

              ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade50,
                  foregroundColor: Colors.teal
              ),
                  onPressed: (){},
                  child: Text(prodecutModel.status)),
              ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade50,
                  foregroundColor: Colors.teal
              ),
                  onPressed: (){},
                  child: Text(prodecutModel.price.toString())),
            ],
          ),
        ],

    );
  }
}

