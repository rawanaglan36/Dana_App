import 'package:dio/dio.dart';
import 'package:utiles/core/model/recipes-model.dart';

class RecipesData{
  getData()async{
    Dio dio = Dio();
    var response=await dio.get('https://dummyjson.com/recipes');
    List data = response.data['recipes'];

    List<RecipesModel>listModel=data.map((e)=>RecipesModel.fromJson(e)).toList();
    return listModel;
  }

}
