import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hd_products/model/product_model.dart';
import 'package:hd_products/services/data.dart';
import 'package:hd_products/widgets/Custom_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Color(0xFFCDB6CA),
          centerTitle: true,
          title: Text("HD-Products",style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
        ),
        body: FutureBuilder<List<ProductModel>>
          (future: getData(),
          builder: (context, snapshot) {
          if(  snapshot .hasData){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CustomWidgets(productModel: snapshot.data![index]);
              },);
          }

          if( snapshot .hasError){
            return Center(child: Text( snapshot.error.toString()));
          }
          return CircularProgressIndicator();
        },),
      ),
    );
  }
}
