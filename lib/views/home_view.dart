import 'package:flutter/material.dart';
import 'package:weather/views/search_view.dart';
import 'package:weather/widgets/no_weather_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => const SearchView(),
        //           ),
        //         );
        //       },
        //       icon: const Icon(Icons.search))
        // ],
      ),
      body: const NoWeatherWidget(),
    );
  }
}
