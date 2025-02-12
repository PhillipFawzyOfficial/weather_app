import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_wheather_cubit/get_weather_cubit.dart';
import 'package:weather/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialAppWidget(),
    );
  }
}

class MaterialAppWidget extends StatelessWidget {
  const MaterialAppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: getColorForWeather(
            BlocProvider.of<GetWeatherCubit>(context)
                .weatherModel
                ?.weatherConsition,
          ),
        ),
      ),
      home: const HomeView(),
    );
  }
}

Color getColorForWeather(String? weatherCondition) {
  switch (weatherCondition) {
    case null:
      return Colors.blue;
    case "Sunny":
      return Colors.orange; // للشمس
    case "Partly cloudy":
      return Colors.yellow; // غائم جزئياً
    case "Cloudy":
      return Colors.grey; // غائم
    case "Overcast":
      return Colors.blueGrey; // مغيم بالكامل
    case "Mist":
    case "Fog":
      return Colors.blueAccent; // ضباب
    case "Patchy rain possible":
    case "Light rain":
    case "Moderate rain":
    case "Heavy rain":
    case "Light rain shower":
    case "Moderate or heavy rain shower":
    case "Torrential rain shower":
      return Colors.blue; // الأمطار
    case "Patchy snow possible":
    case "Light snow":
    case "Moderate snow":
    case "Heavy snow":
    case "Snow showers":
      return Colors.white; // الثلج
    case "Blizzard":
    case "Blowing snow":
      return Colors.blueGrey; // عاصفة ثلجية
    case "Freezing drizzle":
    case "Heavy freezing drizzle":
      return Colors.cyan; // رذاذ متجمد
    case "Patchy light drizzle":
    case "Light drizzle":
      return Colors.teal; // رذاذ خفيف
    default:
      return Colors.blue; // حالة غير معروفة
  }
}
