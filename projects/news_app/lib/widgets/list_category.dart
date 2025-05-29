import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/news_item.dart';

class ListCategory extends StatelessWidget {
 final NewsItem item;
 ListCategory({required this.item});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 150,
        width: 185,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage
                (item.image)),
        ),
        child: Center(
          child: Text(item.name,style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,

          ),),
        ),
      ),
    );
  }
}
