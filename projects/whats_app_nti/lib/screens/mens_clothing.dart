import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

List<dynamic> item = [];
getData() async {
  Dio dio = Dio();
  var response = await dio.get("https://fakestoreapi.com/products");
  var data = response.data;
  item = data;
  return item;
}

class MensClothing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
          backgroundColor: Colors.black87,title: Text(
            "Clothing Store",
            style: TextStyle(

                color: Colors.green,
                fontSize: 17,
                fontWeight: FontWeight.bold
            ),)),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: item.length,
              itemBuilder: (context, index) {
                return Expanded(
                  child: Card(
                    color: Colors.black87,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              SizedBox(
                                width:70,
                                child: Text(
                                  item[index]["title"],

                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,

                                    color: Colors.green,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Spacer(),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(150),
                                  ),
                                ),

                                onPressed: () {},
                                child: Text(
                                  item[index]["category"],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.network(item[index]["image"], height: 300),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            maxLines: 2,
                            item[index]["description"],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,

                              overflow: TextOverflow.ellipsis,

                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Price:  ${item[index]["price"].toString()}",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Spacer(),
                              Text(
                                "Rate: ${item[index]["rating"]["rate"].toString()}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          if(snapshot.connectionState==ConnectionState.waiting){
            return  Center(
              child:  SpinKitHourGlass(
                color: Colors.green,
                size: 100,
              ),
            );
          }
          if(snapshot.hasError){
            return (Text(snapshot.error.toString()));
          }
          return Container();
        },
      ),
    );
  }
}
