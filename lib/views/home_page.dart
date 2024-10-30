import 'package:flutter/material.dart';
import 'package:weather_app/Widgets/weather_info_view.dart';
import 'package:weather_app/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
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
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
              iconSize: 25,
            ),
          ),
        ],
      ),
      body: const WeatherInfoView(),
    );
  }
}
