import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/artical_model.dart';

import '../services/news_services.dart';
import 'item_category.dart';

class NewsListViewBuilder extends StatefulWidget {

  final String category;
  const NewsListViewBuilder({required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   future= NewsServices().getGeneralNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future:future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data ?? []);
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
return CircularProgressIndicator();
        }
        if (snapshot.hasError) {
          return Text("ERROR");
        }
        return Container();
      },
    );
  }
}
