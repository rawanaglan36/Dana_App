import 'package:dio/dio.dart';
import 'package:weather_app/model/weatherModel.dart';

class WeatherServices {
  Dio dio = Dio();
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    var response = await dio.get(
      'http://api.weatherapi.com/v1/forecast.json?key=b75e695cc5bc43adb21120047251309&q=$cityName&days=1&aqi=no&alerts=no',

    );
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
  Future<WeatherModel> getForCast({required String cityName}) async {
    var response = await dio.get(
      'http://api.weatherapi.com/v1/forecast.json?key=b75e695cc5bc43adb21120047251309&q=$cityName&days=1&aqi=no&alerts=no',

    );
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
