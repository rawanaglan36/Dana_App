import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/news_item.dart';
import 'package:news_app/widgets/category_listview.dart';
import 'package:news_app/widgets/custom_appbar.dart';
import 'package:news_app/widgets/item_category.dart';
import 'package:news_app/widgets/list_category.dart';
import 'package:news_app/widgets/newsTile.dart';

class Homescreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  

  body:Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),

    child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppbar()),
        SliverToBoxAdapter(child: SizedBox(height: 16,)),
        SliverToBoxAdapter(
          child: CategoryListview(item: NewsItem(image: "", name:
                           "name"),),

        ),
      //  SliverToBoxAdapter(child: ItemCategory(),),
       SliverList(
           delegate:
       SliverChildBuilderDelegate((context, index) {
         return ItemCategory();
       },))

      ],
    ),
  )

    );

  }
}

