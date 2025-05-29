
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<dynamic> item=[];
Future<dynamic> getData()async{
  final Dio dio = Dio();
  var res = await dio.get("https://elwekala.onrender.com/product/Laptops");
  var data=res.data[ "product"];
  item=data;
  return item;



}
class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Laptop Store",
        style: TextStyle(color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold),),

      ),
      body: FutureBuilder(future: getData(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: item.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: 13,
                      children: [
                        Text(
                        "Name:${item[index]["name"]}",style:
                          TextStyle(color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                        ),

                        Image.network(item[index]["image"],fit: BoxFit.cover,),

                        Text(
                          "Price:  ${item[index]["price"].toString()}",
                        style:TextStyle(color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        textAlign: TextAlign.end),
                      ],
                    ),
                  ),
                );
              }, );

          }
          if(snapshot.connectionState==ConnectionState.waiting){
            return CircularProgressIndicator();
          }
          if(snapshot.hasError){
            return (Text(snapshot.error.toString()));
          }
          return Container();
        },),
    );
  }
}