import 'package:dio/dio.dart';
import 'package:news_app/model/artical_model.dart';

class NewsServices {
  final Dio dio = Dio();

  List<ArticleModel> articlesList = [];

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      articlesList.clear();

      final response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=81b18775ddaa47229d1525cb0130d00b",
      );

      final jsonData = response.data;
      final List<dynamic> articles = jsonData["articles"] ?? [];

      for (var article in articles) {
        final articleModel = ArticleModel(
          source: Source(
            id: article['source']['id'] ?? "",
            name: article['source']['name'] ?? "Unknown Source",
          ),
          description: article['description'] ?? "",
          author: article['author'] ?? "Unknown Author",
          urlToImage:
              article['urlToImage'] ?? "https://via.placeholder.com/150",
          title: article['title'] ?? "No Title",
        );

        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      print("Error fetching news: $e");

      return [];
    }
  }
}
