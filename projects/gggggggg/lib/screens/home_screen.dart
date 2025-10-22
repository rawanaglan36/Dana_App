import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gggggggg/model/categoryModel.dart';

class HomeScreen extends StatelessWidget {
List<CategoryModel>cat=[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
                spacing: 7,
            children: cat.map(e)=>null

             //  Container(
             //    padding: EdgeInsets.all(8),
             //    height: 70,
             //    color: Colors.purple,
             //    child: Row(
             //
             //      children: [
             //        Expanded(
             //          child: Text("News",style: TextStyle(
             //            color: Colors.white,
             //            fontSize: 24,
             //            fontWeight: FontWeight.bold
             //          ),),
             //        ),
             //        VerticalDivider(thickness:2),
             //        Expanded(
             //          child: Text("Magazine",style: TextStyle(
             //              color: Colors.white,
             //              fontSize: 24,
             //              fontWeight: FontWeight.bold
             //          ),),
             //        )
             //      ],
             //    ),
             //  ),
             // Stack(
             //   alignment: Alignment.bottomRight,
             //   children: [
             //     Image.asset("assets/images/الصحة.png"),
             //     Text("seha",style: TextStyle(
             //       color: Colors.black54,
             //       fontSize: 25,
             //       fontWeight: FontWeight.bold
             //     ),)
             //   ],
             // ),
             //  Stack(
             //    alignment: Alignment.bottomRight,
             //    children: [
             //      Image.asset("assets/images/الصحة.png"),
             //      Text("seha",style: TextStyle(
             //          color: Colors.black54,
             //          fontSize: 25,
             //          fontWeight: FontWeight.bold
             //      ),)
             //    ],
             //  ),
             //  Stack(
             //    alignment: Alignment.bottomRight,
             //    children: [
             //      Image.asset("assets/images/الصحة.png"),
             //      Text("seha",style: TextStyle(
             //          color: Colors.black54,
             //          fontSize: 25,
             //          fontWeight: FontWeight.bold
             //      ),)
             //    ],
             //  ),
             //  Stack(
             //    alignment: Alignment.bottomRight,
             //    children: [
             //      Image.asset("assets/images/الصحة.png"),
             //      Text("seha",style: TextStyle(
             //          color: Colors.black54,
             //          fontSize: 25,
             //          fontWeight: FontWeight.bold
             //      ),)
             //    ],
             //  ),
             //  Stack(
             //    alignment: Alignment.bottomRight,
             //    children: [
             //      Image.asset("assets/images/الصحة.png"),
             //      Text("seha",style: TextStyle(
             //          color: Colors.black54,
             //          fontSize: 25,
             //          fontWeight: FontWeight.bold
             //      ),)
             //    ],
             //  ),
             //  Stack(
             //    alignment: Alignment.bottomRight,
             //    children: [
             //      Image.asset("assets/images/الصحة.png"),
             //      Text("seha",style: TextStyle(
             //          color: Colors.black54,
             //          fontSize: 25,
             //          fontWeight: FontWeight.bold
             //      ),)
             //    ],
             //  ),
             //  Stack(
             //    alignment: Alignment.bottomRight,
             //    children: [
             //      Image.asset("assets/images/الصحة.png"),
             //      Text("seha",style: TextStyle(
             //          color: Colors.black54,
             //          fontSize: 25,
             //          fontWeight: FontWeight.bold
             //      ),)
             //    ],
             //  ),
          
            ],
          ),
        ),
      
      ),
    );
  }
}
