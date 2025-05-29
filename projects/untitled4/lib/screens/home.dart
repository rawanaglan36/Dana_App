import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/data/Data.dart';
import 'package:untitled4/data_class/prodecut_model.dart';
import 'package:untitled4/widgets/custom_Widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ProdecutModel>>(future: getData(), builder: (context, snapshot) {
if(  snapshot .hasData){
  return ListView.builder(
    itemCount: snapshot.data!.length,
    itemBuilder: (context, index) {
    return CustomWidget(prodecutModel: snapshot.data![index]);
  },);
}

  if( snapshot .hasError){
    return Center(child: Text( snapshot.error.toString()));
  }
      return CircularProgressIndicator();
      },),
    );
  }
}

