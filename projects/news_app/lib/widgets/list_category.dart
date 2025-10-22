import 'package:flutter/material.dart';
import 'package:news_app/widgets/details_listView.dart';

import '../model/news_item.dart';

class ListCategory extends StatelessWidget {
  final NewsItem item;

  const ListCategory({super.key, required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailsListview(category:item.name,);
          },));
        },
        child: Container(
          height: 150,
          width: 185,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(item.image),fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              item.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
