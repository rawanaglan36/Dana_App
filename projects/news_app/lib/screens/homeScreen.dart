import 'package:flutter/material.dart';
import 'package:news_app/model/news_item.dart';
import 'package:news_app/widgets/category_listview.dart';
import 'package:news_app/widgets/custom_appbar.dart';

import '../widgets/newsListViewBuilder.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomAppbar()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: CategoryListview(
                item: NewsItem(image: "", name: "name"),
              ),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return NewsListViewBuilder(category: "general",);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
