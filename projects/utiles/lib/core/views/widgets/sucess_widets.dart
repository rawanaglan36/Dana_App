import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utiles/core/model/recipes-model.dart';

class SucessWidets extends StatefulWidget {
  
final RecipesModel recipesModel;
const SucessWidets({required this.recipesModel});

  @override
  State<SucessWidets> createState() => _SucessWidetsState();
}

class _SucessWidetsState extends State<SucessWidets> {
 bool isSelected=true;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.network(widget.recipesModel.image),
              Container(alignment: Alignment.bottomCenter,
                  color: Colors.purple.shade50,
                  child: Row(
                    children: [
                      Text(widget.recipesModel.name,
                      style: TextStyle(color: Colors.black54,
                      fontSize: 9,
                      fontWeight: FontWeight.bold),),
                      Spacer(),
                      IconButton(onPressed: (){
                        isSelected=!isSelected;
                        setState(() {

                        });
                      },
                          icon: Icon(
                              isSelected?Icons.favorite_border:Icons.favorite,
                            color: isSelected?Colors.red:Colors.grey,
                          ),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}

