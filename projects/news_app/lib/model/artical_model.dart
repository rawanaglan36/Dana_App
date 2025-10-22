class ArticleModel {
  final String? urlToImage;
  final String title;

  final String? description;
  final String author;
  final Source source;

  const ArticleModel({
    required this.description,
    required this.author,
    required this.urlToImage,
    required this.title,
    required this.source,
  });
  factory ArticleModel.fromJson(Map<String,dynamic>json) {
    return ArticleModel(
        description: json['description'],
        author: json['author'],
        urlToImage: json['urlToImage'],
        title: json['title'],
        source: json['source']);
  }
}

class Source {
  final String id;
  final String name;
  const Source({required this.id, required this.name});
}
