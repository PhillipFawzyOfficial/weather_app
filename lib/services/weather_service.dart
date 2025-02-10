import 'package:dio/dio.dart';
import 'package:weather/models/weather_model.dart';

class WeatherService {
  final Dio dio = Dio();

  Future<WeatherModel> getWeather() async {
    Response response = await dio.get(
        'http://api.weatherapi.com/v1/forecast.json?key=15736d145ed14d54a6f210947241201&q=Cairo');

    WeatherModel weatherModel = WeatherModel.fromJson(response.data);

    return weatherModel;
  }
}
