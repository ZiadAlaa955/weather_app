import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/Widgets/weather_info.dart';
import 'package:weather_app/main.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    String image = weatherModel.image;
    String hour = DateFormat("h").format(weatherModel.date);
    String min = weatherModel.date.minute.toString();

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            getThemeColor(condition: weatherModel.condition),
            getThemeColor(condition: weatherModel.condition)[300]!,
            getThemeColor(condition: weatherModel.condition)[100]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: WeatherInfo(
          weatherModel: weatherModel, hour: hour, min: min, image: image),
    );
  }
}
