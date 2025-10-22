import 'package:flutter/cupertino.dart';
import 'package:news_app/model/news_item.dart';

import 'list_category.dart';

class CategoryListview extends StatelessWidget {
  final NewsItem item;
  CategoryListview({super.key, required this.item});
  List<NewsItem> news = [
    NewsItem(image: "assets/images/business.avif", name: "business"),

    NewsItem(image: "assets/images/entertaiment.avif", name: "entertaiment"),
    NewsItem(image: "assets/images/general.avif", name: "general"),
    NewsItem(image: "assets/images/health.avif", name: "health"),
    NewsItem(image: "assets/images/science.avif", name: "science"),
    NewsItem(image: "assets/images/sports.avif", name: "sports"),
    NewsItem(image: "assets/images/technology.jpeg", name: "technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(height: 100,
      width: 100,

      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(width: 10,);
        },

        scrollDirection: Axis.horizontal,

        physics: ScrollPhysics(),
        itemCount: news.length,
        itemBuilder: (context, index) {
          return ListCategory(item: news[index]);
        },
      ),
    );
  }
}
