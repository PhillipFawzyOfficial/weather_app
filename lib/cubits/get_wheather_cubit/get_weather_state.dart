import 'package:weather/models/weather_model.dart';

class WeatherState {}

class InitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel? weatherModel;

  WeatherLoadedState({required this.weatherModel});
}

class WeatherFalureState extends WeatherState {}
