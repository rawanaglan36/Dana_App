import 'package:dio/dio.dart';
import 'package:untitled7/model/character_model.dart';

import '../core/manger/app.dart';

class AppData {
  getData() async {
    Dio dio = Dio();
    var response = await dio.get('https://rickandmortyapi.com/api/character');
    List data = response.data['results'];
    List<CharacterModel> listModel = data
        .map((e) => CharacterModel.fromJson(e))
        .toList();
    return listModel;
  }
}
