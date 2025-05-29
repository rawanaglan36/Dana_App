
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
        centerTitle: true,
        title: Text("Api"),

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

                         CircleAvatar(
                           radius: 200,
                           child: Image.network(item[index]["image"],fit: BoxFit.cover,),
                       ),
                         Text(item[index]["name"]),
                           Text(item[index]["Descriotion"].toString()),
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