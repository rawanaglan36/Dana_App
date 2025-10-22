import 'package:dio/dio.dart';

import '../../../model/item_model.dart';

class CartData{
  final Dio dio = Dio();
  addData({required String id})async{
    var response=await dio.post('https://elwekala.onrender.com/cart/add',
      data:
        {
          "nationalId": "01210567022258",
          "productId": "64666d3a91c71d884185b774",
          "quantity": "1"
        }
    );
   print(response.data);

  }
  getData() async {
    final Dio dio = Dio();
    var response = await dio.get(
        'https://elwekala.onrender.com/product/Laptops',
      data: {
        "nationalId": "01210567022258"
      }
    );
    List data = response.data['product'];
    // return data['product'];
    List<ItemModel>listModel = data.map((e) => ItemModel.fromJson(e)).toList();
    print(listModel[0].image);
    return listModel;
  }
}