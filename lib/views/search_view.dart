import 'package:flutter/material.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/Services/weather_service.dart';
import 'package:weather_app/constants.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static String id = 'searchView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the color you want here
        ),
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Search City',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            onSubmitted: (value) async {},
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              suffixIconColor: Colors.grey,
              hintText: 'Enter city name',
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              label: const Text('Search'),
              border: customBorder(),
              focusedBorder: customBorder(),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
    );
  }
}
