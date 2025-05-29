
import 'package:dio/dio.dart';
import 'package:nti/model/Item_model.dart';


///map=>retrurn function
Future<List<ItemModel>>getData() async {
  Dio dio = Dio();
  var response = await dio.get('https://fakestoreapi.com/products');

  List data = response.data;

  List<ItemModel>listModel = data.map((e) => ItemModel.fromJson(e),)
      .toList();

  return listModel;
}