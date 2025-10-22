import 'package:dio/dio.dart';
import 'package:untitled8/model/item_model.dart';

class   Data{
getData()async{
  Dio dio = Dio();
  var response= await dio.get('https://dummyjson.com/products?limit=10');
  var data = response.data;

  List<ItemModel>list = data.map((e)=>ItemModel.fromJson(e)).toList();
  return list;
}
}