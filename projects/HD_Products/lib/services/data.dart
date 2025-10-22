
import 'package:dio/dio.dart';
import 'package:hd_products/model/product_model.dart';

Future<List<ProductModel>>getData() async {
  Dio dio = Dio();
  var response = await dio.get('https://dummyjson.com/products?limit=10');

  List data = response.data["products"];

  List<ProductModel>listModel = data.map((e) => ProductModel.fromJson(e),)
      .toList();

  return listModel;
}