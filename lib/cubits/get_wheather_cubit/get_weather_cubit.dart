import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_wheather_cubit/get_weather_state.dart';
import 'package:weather/models/weather_model.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialState());

  late WeatherModel weatherModel;

  Dio dio = Dio();

  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '15736d145ed14d54a6f210947241201';

  Future<WeatherModel?> getWeather({required String cityName}) async {
    try {
      Response response =
          await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName');

      weatherModel = WeatherModel.fromJson(response.data);

      emit(WeatherLoadedState(weatherModel: weatherModel));
      return weatherModel;
    } on DioException catch (e) {
      final String errorMesage = e.response?.data['error']['message'] ??
          'Opes There Was An Error, try Later';

      throw Exception(errorMesage);
    } catch (e) {
      throw Exception('Opes There Was An Error, try Later');
    }
  }
}
