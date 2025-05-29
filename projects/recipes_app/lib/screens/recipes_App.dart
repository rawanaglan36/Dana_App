
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'discretion_screen.dart';

List<dynamic> item = [];
Future<dynamic> getData() async {
  Dio dio = Dio();
  var response = await dio.get("https://dummyjson.com/recipes");
  var data = response.data["recipes"];
  item = data;
  return item;
}

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text(
          "Recipes App",
          style: TextStyle(
            color: Colors.teal.shade50,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: item.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      elevation: 10,
                      color: Colors.grey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,

                        children: [

                          Container(
                            alignment: Alignment.bottomCenter,
                            width: double.infinity,
                            height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(
                                children: [
                                  Image.network(
                                    item[index]["image"],
                                    width: double.infinity,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),

                                  Container(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      color: Colors.black54,
                                      child: Center(
                                        child: TextButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return   DiscretionScreen(recipe: item[index]);
                                            },));
                                          },
                                          child: Text(
                                            item[index]["name"],
                                            style: TextStyle(
                                              color: Colors.teal.shade50,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          if(snapshot.connectionState==ConnectionState.waiting){
            return SpinKitHourGlass(
              color: Colors.teal,
              size: 100,);
          }
          if(snapshot.hasError){
            return Text(snapshot.hasError.toString());
          }
          return Container();
        },
      ),
    );
  }
}