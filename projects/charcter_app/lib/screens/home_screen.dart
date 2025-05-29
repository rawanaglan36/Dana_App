import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<dynamic> item = [];
Future<List<dynamic>> getData() async {
  Dio dio = Dio();
  var response = await dio.get("https://rickandmortyapi.com/api/character");
  var data = response.data['results'];
  item = data;
  return item;
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Colors.teal.shade50,
        title: Text(
          "Charcter App",
          style: TextStyle(
            color: Colors.teal,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              itemCount: item.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                crossAxisCount:2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
              ),
              itemBuilder: (context, index) {
                return Stack(
                  children: [

                    Card(

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.network(
                          item[index]["image"],
                          fit: BoxFit.fill,
                        ),
                      ),

                    ),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: Container(
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            item[index]["name"],

                            style: TextStyle(color: Colors.teal.shade50),
                          ),
                        ),
                      ),
                    ),

                  ],
                );
              },
            );

            /// Image.network( snapshot.data?[0]['image']);
          }
          return Container();
        },
      ),
    );
  }
}