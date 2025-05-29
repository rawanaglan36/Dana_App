import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/main.dart';
List<dynamic> item = [];
Future<dynamic> getData() async {
  Dio dio = Dio();
  var response = await dio.get("https://dummyjson.com/recipes");
  var data = response.data["recipes"];
   item = data;

  return data;
}
class DiscretionScreen extends StatelessWidget {

  final dynamic recipe;

  const DiscretionScreen({required this.recipe});


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
            title: Text(recipe["name"],style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),
            backgroundColor: Colors.teal,
          iconTheme: IconThemeData(
          color: Colors.white,
        ),),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(12),

          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [


                Container(

                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(20)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(180),
                        child: Image.network(recipe["image"],fit: BoxFit.cover,))),
                Text(recipe["name"], style: TextStyle(
                    color: Colors.teal,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      ElevatedButton(style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal.shade100,
                          foregroundColor: Colors.teal
                      ),
                          onPressed: () {},

                          child: Text(
                            "Cuisine :${recipe["cuisine"]}",)),
                      SizedBox(width: 5,),
                      ElevatedButton(style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal.shade100,
                          foregroundColor: Colors.teal
                      ),
                        onPressed: () {},

                        child: Text(

                            "CookTimeMinutes: ${recipe["cookTimeMinutes"]}"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      ElevatedButton(style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal.shade100,
                          foregroundColor: Colors.teal
                      ),
                          onPressed: () {},

                          child: Text(

                              "Claories : ${recipe["caloriesPerServing"]
                                  .toString()}"
                          )),
                      SizedBox(width: 5,),
                      ElevatedButton(style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal.shade100,
                          foregroundColor: Colors.teal
                      ),
                        onPressed: () {},

                        child: Text(
                            "difficulty:${recipe["difficulty"]}"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Ingredients:\n ${recipe["ingredients"].join("\n")}",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),

                    ),
                  ),

                ),
                Divider(
                  color: Colors.teal,
                ),
                Text(overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  "instructions:\n ${recipe["instructions"].join("\n")}",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),

                ),


              ]
          ),
        ),
      );
  }
}




