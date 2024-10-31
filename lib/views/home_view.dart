import 'package:flutter/material.dart';
import 'package:weather_app/Widgets/no_weather_view.dart';
import 'package:weather_app/Widgets/weather_info_view.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/views/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Weatehr App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchView.id);
              },
              icon: const Icon(Icons.search),
              color: Colors.white,
              iconSize: 25,
            ),
          ),
        ],
      ),
      body: const NoWeatherView(),
    );
  }
}
