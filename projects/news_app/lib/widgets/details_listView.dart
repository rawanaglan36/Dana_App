import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/newsListViewBuilder.dart';

import '../model/news_item.dart';


class DetailsListview extends StatelessWidget {

final String category;
const DetailsListview({required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers:
        [
          SliverToBoxAdapter(child: NewsListViewBuilder(category:category ))
        ],

      )
    );
  }
}
