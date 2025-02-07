import 'package:flutter/material.dart';

class NoWeatherWidget extends StatelessWidget {
  const NoWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'there is no weather 😔 start \n searching now 🔍',
        style: TextStyle(fontSize: 32),
        textAlign: TextAlign.center,
      ),
    );
  }
}
