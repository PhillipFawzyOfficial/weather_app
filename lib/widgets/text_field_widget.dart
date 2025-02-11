import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/services/weather_service.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: TextField(
          onSubmitted: (value) async {
            weatherModel =
                await WeatherService(Dio()).getWeather(cityName: value);
            Navigator.pop(context);
          },
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            label: Text('Search'),
            suffixIcon: Icon(Icons.search),
            hintText: 'Enter City Name',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
            ),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;
