import 'package:dio/dio.dart';

import '../model/item_model.dart';
class LapData {
  getData() async {
    final Dio dio = Dio();
    var response = await dio.get(
        'https://elwekala.onrender.com/product/Laptops'
    );
    List data = response.data['product'];
    // return data['product'];
    List<ItemModel>listModel = data.map((e) => ItemModel.fromJson(e)).toList();
    return listModel;
  }

}
