import 'package:flutter/cupertino.dart';

import '../model/artical_model.dart';

import 'newsTile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22.0),
          child: Newstile(articleModel: articles[index]),
        );
      },
    );
  }
}
