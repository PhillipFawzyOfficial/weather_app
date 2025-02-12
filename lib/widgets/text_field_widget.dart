import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_wheather_cubit/get_weather_cubit.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: TextField(
          onSubmitted: (value) {
            BlocProvider.of<GetWeatherCubit>(context)
                .getWeather(cityName: value);

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
