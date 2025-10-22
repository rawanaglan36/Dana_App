import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hd_products/model/product_model.dart';

class DesScreen extends StatelessWidget {

final ProductModel productModel;
const DesScreen({required this.productModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFFCDB6CA)
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Card(color: Color((0xFFCDB6CA)),
              child: ClipRRect(borderRadius: BorderRadius.circular(190),
                  child: Image.network(productModel.image)),
          )),
          Text(productModel.category,style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          Text(productModel.id.toString(),style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(overflow: TextOverflow.ellipsis,
                maxLines: 3,
                productModel.description,style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
          )
        ],
      ),
    );
  }
}
