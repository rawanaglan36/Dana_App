import 'package:dio/dio.dart';
import 'package:news_app/model/artical_model.dart';

class NewsServices{
  final Dio dio =Dio();
  // void getGeneralNews() async {
  //   final response = await dio.get('https://newsapi.org/docs');
  //   print(response);
  // }
  // void getSportsNews() async {
  //   final response = await dio.get('https://newsapi.org/docs');
  //   print(response);
  // }
  List<ArticleModel>articles=[];
Future<List> getGeneralNews()async{
  var response=await dio.get("https://newsapi.org/v2/top-headlines/sources?category=general&language=ar&country=ar&apiKey=81b18775ddaa47229d1525cb0130d00b");{
    var jsonData = response.data;
   print(jsonData);
    // print(jsonData["articles"]);
    // for(var article in articles ){
    //   print(articles["author"]);
    articles = jsonData ;
    return articles;
    }
  }
}

// https://newsapi.org/v2/top-headlines/sources?category=general&country=ar&apiKey=81b18775ddaa47229d1525cb0130d00b