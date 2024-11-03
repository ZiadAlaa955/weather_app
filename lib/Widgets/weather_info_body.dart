import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/main.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    String image = weatherModel.image;
    var hour = DateFormat("h").format(weatherModel.date);
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Updated at $hour:${weatherModel.date.minute.toString()}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                image.contains('https:') ? image : ('https:$image'),
              ),
              Text(
                weatherModel.avgTemp.floor().toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text(
                    'maxTemp : ${weatherModel.maxTemp.floor().toString()}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'minTemp : ${weatherModel.minTemp.floor().toString()}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 55,
          ),
          Text(
            weatherModel.condition,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
