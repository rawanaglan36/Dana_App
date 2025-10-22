import 'package:dio/dio.dart';

import '../model/GallaryModel.dart';


class AppData {
  final Dio _dio = Dio();

  Future<List<GallaryModel>> getData() async {
    try {
      var response = await _dio.get(
        'https://images-api.nasa.gov/search?q=moon&media_type=image',
      );

      final List items = response.data['collection']['items'];


      return items.map((item) => GallaryModel.fromJson(item)).toList();
    } catch (e) {
      print('Error fetching data: $e');
      return [];
    }
  }
}
