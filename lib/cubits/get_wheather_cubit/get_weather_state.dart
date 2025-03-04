import 'package:weather/models/weather_model.dart';

class GetWeatherState {}

class InitialState extends GetWeatherState {}

class WeatherLoadedState extends GetWeatherState {
  final WeatherModel? weatherModel;

  WeatherLoadedState({required this.weatherModel});
}

class WeatherFalureState extends GetWeatherState {}
