import 'package:dio/dio.dart';

import '../../../model/item_model.dart';

class DataFav {
  static final Dio dio = Dio();
  static addFavorites({required String productId}) async {
    var response = await dio.post(
      'https://elwekala.onrender.com/favorite',
      data: {"nationalId": "01036524572123", "productId": productId},
    );
    print(response.data);
    print("Add Fav Response: ${response.data}");
  }

  static deleteFavorites({required String productId}) async {
    var response = await dio.delete(
      'https://elwekala.onrender.com/favorite',
      data: {"nationalId": "01036524572123", "productId": productId},
    );
    print(response.data);
  }

  static getFav() async {
    final Dio dio = Dio();
    var response = await dio.get(
      'https://elwekala.onrender.com/favorite',
      data: {
        "nationalId": "01056710052789",
      },
    );

    print("response data: ${response.data}");

    List data = response.data['favoriteProducts'] ;
    List<ItemModel> list = data.map((e) => ItemModel.fromJson(e)).toList();

    return list;
  }
}
