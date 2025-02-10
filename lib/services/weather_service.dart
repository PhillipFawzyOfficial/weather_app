import 'package:dio/dio.dart';
import 'package:weather/models/weather_model.dart';

class WeatherService {
  final Dio dio = Dio();

  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '15736d145ed14d54a6f210947241201';

  Future<WeatherModel> getWeather() async {
    Response response =
        await dio.get('$baseUrl/forecast.json?key=$apiKey&q=Cairo');

    WeatherModel weatherModel = WeatherModel.fromJson(response.data);

    return weatherModel;
  }
}
