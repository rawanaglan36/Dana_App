import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:route_cars_task1/widgets/category_home.dart';
import 'package:route_cars_task1/widgets/item_widget.dart';

import '../model/category.dart';

class HomeScreen extends StatelessWidget {
  List<Category>categoryList=[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(
         
         
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                ItemWidget(name: 'الاخبار',),
                ItemWidget(name: "المجلات",),
               ],
             ),
             Padding(
               padding: const EdgeInsets.all(3),
               child: Row(
                 children: [

                   CategoryHome(text: 'مجله السياسه', image: "assets/images/الاقتصاد.jpg"),
                   SizedBox(width: 3),

                   CategoryHome(text: "مجله السياسه", image: "assets/images/الاقتصاد.jpg")
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(3),
               child: Row(
                 children: [

                   CategoryHome(text: 'مجله السياسه', image: "assets/images/الاقتصاد.jpg"),
                   SizedBox(width: 3),

                   CategoryHome(text: "مجله السياسه", image: "assets/images/الاقتصاد.jpg")
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(3),
               child: Row(
                 children: [

                   CategoryHome(text: 'مجله السياسه', image: "assets/images/الاقتصاد.jpg"),
                   SizedBox(width: 3),

                   CategoryHome(text: "مجله السياسه", image: "assets/images/الاقتصاد.jpg")
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(3),
               child: Row(
                 children: [

                   CategoryHome(text: 'مجله السياسه', image: "assets/images/الاقتصاد.jpg"),
                   SizedBox(width: 3),

                   CategoryHome(text: "مجله السياسه", image: "assets/images/الاقتصاد.jpg")
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(3),
               child: Row(
                 children: [

                   CategoryHome(text: 'مجله السياسه', image: "assets/images/الاقتصاد.jpg"),
                   SizedBox(width: 3),

                   CategoryHome(text: "مجله السياسه", image: "assets/images/الاقتصاد.jpg")
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(3),
               child: Row(
                 children: [

                   CategoryHome(text: 'مجله السياسه', image: "assets/images/الاقتصاد.jpg"),
                   SizedBox(width: 3),

                   CategoryHome(text: "مجله السياسه", image: "assets/images/الاقتصاد.jpg")
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(3),
               child: Row(
                 children: [

                   CategoryHome(text: 'مجله السياسه', image: "assets/images/الاقتصاد.jpg"),
                   SizedBox(width: 3),

                   CategoryHome(text: "مجله السياسه", image: "assets/images/الاقتصاد.jpg")
                 ],
               ),
             ),
           ],
         ),
       ),
     ),
    );
  }
}
