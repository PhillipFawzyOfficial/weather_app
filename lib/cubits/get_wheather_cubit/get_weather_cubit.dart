import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_wheather_cubit/get_weather_state.dart';
import 'package:weather/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialState());

  getWeather({required String cityName}) async {
    try {
      await WeatherService(Dio()).getWeather(cityName: cityName);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFalureState());
    }
  }
}
