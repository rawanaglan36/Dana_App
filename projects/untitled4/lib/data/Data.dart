
import 'package:dio/dio.dart';
import 'package:untitled4/data_class/prodecut_model.dart';

///map=>retrurn function
Future<List<ProdecutModel>>getData() async {
  Dio dio = Dio();
  var response = await dio.get('https://elwekala.onrender.com/product/Laptops');

  List data = response.data['product'];

  List<ProdecutModel>listModel = data.map((e) => ProdecutModel.fromJson(e),)
      .toList();

  return listModel;
}