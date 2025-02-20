import 'package:flutter/material.dart';
import 'package:weather_app/Utils/helper.dart';
import 'package:weather_app/Widgets/app_bar_text.dart';
import 'package:weather_app/Widgets/search_icon_button.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const AppBarText(title: 'Search City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            controller: controller,
            onSubmitted: (value) {
              submitCityname(context, value);
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              suffixIcon: SearchIconButton(
                onPressed: () {
                  submitCityname(context, controller.text);
                },
                color: Colors.black54,
              ),
              hintText: 'Enter city name',
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              label: const Text('Search'),
              border: customBorder(color: Colors.grey),
              focusedBorder: customBorder(color: Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}
