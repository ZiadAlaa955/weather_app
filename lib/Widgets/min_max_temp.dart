import 'package:flutter/material.dart';
import 'package:weather_app/Models/weather_model.dart';

class MinMaxTemp extends StatelessWidget {
  const MinMaxTemp({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'maxTemp : ${weatherModel.maxTemp.floor().toString()}',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'minTemp : ${weatherModel.minTemp.floor().toString()}',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
