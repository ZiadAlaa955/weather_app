import 'package:flutter/material.dart';
import 'package:weather_app/Services/weather_service.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:weather_app/views/search_view.dart';

void main() {
  WeatherService().getCurrentWeather();
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => const HomeView(),
        SearchView.id: (context) => const SearchView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
