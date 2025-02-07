import 'package:flutter/material.dart';
import 'package:weather/widgets/no_weather_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: const NoWeatherWidget(),
    );
  }
}
