import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti/model/Item_model.dart';

import '../data/Data.dart';
import '../widgets/custom_widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: FutureBuilder<List<ItemModel>>(future: getData(), builder: (context, snapshot) {
        if(  snapshot .hasData){
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return CustomWidget(itemModel: snapshot.data![index]);
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