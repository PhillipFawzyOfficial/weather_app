import 'package:flutter/material.dart';
import 'package:weather/widgets/text_field_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search A City'),
      ),
      body: const TextFieldWidget(),
    );
  }
}
