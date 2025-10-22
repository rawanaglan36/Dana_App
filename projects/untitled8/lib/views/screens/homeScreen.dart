import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/data/data.dart';

class Homescreen extends StatelessWidget {
Data data = Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        backgroundColor: Colors.blue,
        title: Text("HABIBA"),
      ),
      body: FutureBuilder(
          future: data.getData(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              final items = snapshot.data as List;
              return ListView.builder(
             itemCount: items.length,
                  itemBuilder: (context,index){
             return Card(
               child: Text(items[index]['title'])
             );

                  });

            }
            return Container();
          },),

    );
  }
}
