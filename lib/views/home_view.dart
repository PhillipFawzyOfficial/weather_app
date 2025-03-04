import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_wheather_cubit/get_weather_cubit.dart';
import 'package:weather/cubits/get_wheather_cubit/get_weather_state.dart';
import 'package:weather/views/search_view.dart';
import 'package:weather/widgets/info_weather_widget.dart';
import 'package:weather/widgets/no_weather_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchView(),
                  ),
                );
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          if (state is InitialState) {
            return const NoWeatherWidget();
          } else if (state is WeatherLoadedState) {
            return InfoWeatherWidget(
              weatherModel: state.weatherModel,
            );
          } else {
            return const Center(
              child: Text(
                'There Was An Error, please try again latter',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            );
          }
        },
      ),
    );
  }
}
